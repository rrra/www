#!/bin/sh
#
# Name: add-rrra-meetings.sh
# By: Steve Kostecke (K0STK) steve@kostecke.net k0stk@arrl.net
# Date: $Id:$
#
# Purpose: Generate calendar entries for monthly meetings
#
# Dependencies: ?

# We must be in the root of our hugo source tree
YEAR=`date +%Y`
NEXTYEAR=`echo $YEAR 1 + p | dc`
MYPATH="content/calendar/$NEXTYEAR"
[ -d $MYPATH ] || \
	(echo "Not at root of web source tree."; exit 1)

CLUB_START="19:00"
ARES_START="18:30"
LOCATION="[West Fargo FD HQ](/places/west-fargo-fire-department-headquarters/)"

# Uses variables assembled elsewhere
build_club_meeting() {
cat << DONE > $FILENAME
+++
contact = "president"
date = "$EVENTDATE"
publishDate = "$PUBDATE"
location = "$LOCATION"
title = "$MON_NAME Business Meeting"
dates = [ "Club Meetings" ]
outputs = [ "HTML", "Calendar" ]
update = 0
aliases = [ "" ]
+++
### Meeting Information

{{% meeting-note %}}
DONE
}

build_ares_meeting() {
cat << DONE > $FILENAME
+++
contact = "KC0ODE"
date = "$EVENTDATE"
publishDate = "$PUBDATE"
location = "$LOCATION"
title = "$MON_NAME ARES Meeting"
dates = [ "ARES Meetings" ]
outputs = [ "HTML", "Calendar" ]
update = 0
aliases = [ "" ]
+++
DONE
}

build_activity() {
cat << DONE > $FILENAME
+++
contact = "president"
date = "$EVENTDATE"
publishDate = "$PUBDATE"
location = "$LOCATION"
title = "$MON_NAME Activity: TBD"
dates = [ "Club Meetings" ]
outputs = [ "HTML", "Calendar" ]
update = 0
aliases = [ "" ]
+++
DONE
}

# Business & ARES Meetings
MONTHS="2 5 8 11"
for M in $MONTHS;
do

	MON_NAME=`date -d "$M/1/2001" +"%B"`
	MONTH=`echo $MON_NAME | sed 's/\([[:alpha:]]\)/\L\1/'`

	# Find the 3rd Tuesday of each month
	D=`cal $M $NEXTYEAR | awk 'NF>4 { print $3 }' | sed -n '4p'`

	# Skip months with existing entries
	FILENAME="$MYPATH/$MONTH-meeting.md"
	[ -f "$FILENAME" ] || {
		EVENTDATE=`date -d "$CLUB_START $M/$D/$NEXTYEAR" --iso-8601=seconds`
		PUBDATE=`date -d "$EVENTDATE -120 days" +"%Y-%m-%d"`
		build_club_meeting
	}

	FILENAME="$MYPATH/$MONTH-ares-meeting.md"
	[ -f "$FILENAME" ] || {
		EVENTDATE=`date -d "$ARES_START $M/$D/$NEXTYEAR" --iso-8601=seconds`
		PUBDATE=`date -d "$EVENTDATE -120 days" +"%Y-%m-%d"`
		build_ares_meeting
	}

done

# Activity Meetings
MONTHS="1 3 4 6 7 9 10"
for M in $MONTHS;
do

	MON_NAME=`date -d "$M/1/2001" +"%B"`
	MONTH=`echo $MON_NAME | sed 's/\([[:alpha:]]\)/\L\1/'`

	# Find the 3rd Tuesday of each month
	D=`cal $M $NEXTYEAR | awk 'NF>4 { print $3 }' | sed -n '4p'`

	# Skip months with existing entries
	FILENAME="$MYPATH/$MONTH-meeting.md"
	[ -f "$FILENAME" ] || {
		EVENTDATE=`date -d "$CLUB_START $M/$D/$NEXTYEAR" --iso-8601=seconds`
		PUBDATE=`date -d "$EVENTDATE -120 days" +"%Y-%m-%d"`
		build_activity
	}

done

