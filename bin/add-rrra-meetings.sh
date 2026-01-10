#!/bin/sh
#
# Name: add-rrra-meetings.sh
# By: Steve Kostecke (K0STK) steve@kostecke.net k0stk@arrl.net
# Date: $Id:$
#
# Purpose: Generate calendar entries for monthly meetings
#
# Dependencies: ?

# User configuration
CLUB_START="19:00"
ARES_START="18:30"
CLUB_CONTACT="president"
ACTIVITY_CONTACT="president"
ARES_CONTACT="KC0ODE"
LOCATION="[West Fargo FD HQ](/places/west-fargo-fire-department-headquarters/)"
BASE="content/calendar"

YEAR=`date +%Y`
MONTH=`date +%m`
MONTH_NAME=`date -d "$MONTH/1/2001" +"%B"`
LC_MONTH=`echo $MONTH_NAME | tr [:upper:] [:lower:]`
NEXTYEAR=`echo $YEAR 1 + p | dc`
MYPATH="$BASE/$NEXTYEAR"

# Find the 3rd Tuesday of the target month
DAY=`cal $MONTH $NEXTYEAR | awk 'NF>4 { print $3 }' | sed -n '4p'`

# Sanity check & prep
[ -d $BASE ] || \
	(echo "Not at root of web source tree."; exit 1)
[ -d "$MYPATH" ] || mkdir "$MYPATH"

# Uses variables assembled elsewhere
build_club_meeting() {
cat << DONE > $FILENAME
+++
contact = "$CLUB_CONTACT"
date = "$EVENTDATE"
publishDate = "$PUBDATE"
location = "$LOCATION"
title = "$MONTH_NAME Business Meeting"
slug = "club-meeting"
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
contact = "$ARES_CONTACT"
date = "$EVENTDATE"
publishDate = "$PUBDATE"
location = "$LOCATION"
title = "$MONTH_NAME ARES Meeting"
slug = "ares-meeting"
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
contact = "$ACTIVITY_CONTACT"
date = "$EVENTDATE"
publishDate = "$PUBDATE"
location = "$LOCATION"
title = "$MONTH_NAME Activity: TBD"
slug = "club-activity"
dates = [ "Club Meetings" ]
outputs = [ "HTML", "Calendar" ]
update = 0
aliases = [ "" ]
+++
DONE
}

meeting_month() {

	# Skip months with existing entries
	FILENAME="$MYPATH/$LC_MONTH-meeting.md"
	[ -f "$FILENAME" ] || {
		EVENTDATE=`date -d "$CLUB_START $MONTH/$DAY/$NEXTYEAR" --iso-8601=seconds`
		PUBDATE=`date +"%Y-%m-%d"`
		build_club_meeting
	}

	FILENAME="$MYPATH/$LC_MONTH-ares-meeting.md"
	[ -f "$FILENAME" ] || {
		EVENTDATE=`date -d "$ARES_START $MONTH/$DAY/$NEXTYEAR" --iso-8601=seconds`
		PUBDATE=`date +"%Y-%m-%d"`
		build_ares_meeting
	}

}

activity_month() {

	# Skip months with existing entries
	FILENAME="$MYPATH/$LC_MONTH-meeting.md"
	[ -f "$FILENAME" ] || {
		EVENTDATE=`date -d "$CLUB_START $MONTH/$DAY/$NEXTYEAR" --iso-8601=seconds`
		PUBDATE=`date +"%Y-%m-%d"`
		build_activity
	}

}

# Main code

case $MONTH in

02 | 05 | 08 | 11)
	# Business & ARES Meetings
	meeting_month
	;;

01 | 03 | 04 | 06 | 07 | 09 | 10)
	# Activity Meetings
	activity_month
	;;

esac

