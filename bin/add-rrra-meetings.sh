#!/bin/sh
#
# Name: add-rrra-meetings.sh
# By: Steve Kostecke (K0STK) steve@kostecke.net k0stk@arrl.net
# Date: $Id:$
#
# Purpose: Generate calendar entries for monthly meetings
#
# Dependencies: awk, cal, date, dc, sed, tr

###########################################################################
# User configuration
###########################################################################

CLUB_START="19:00"
ARES_START="18:30"
CLUB_CONTACT="president"
ACTIVITY_CONTACT="president"
ARES_CONTACT="KC0ODE"
LOCATION="[West Fargo FD HQ](/places/west-fargo-fire-department-headquarters/)"
BASE="content/calendar"

###########################################################################
# Values we need
###########################################################################

YEAR=`date +%Y`                                      # 4 digit year
NEXTYEAR=`echo $YEAR 1 + p | dc`                     # next year
MONTH=`date +%m`                                     # e.g. 01
MONTH_NAME=`date -d "$MONTH/1/2001" +"%B"`           # e.g. January
LC_MONTH=`echo $MONTH_NAME | tr [:upper:] [:lower:]` # lower case month
                                                     # for the filename
# Publish the meeting immediately
PUBDATE=`date +"%Y-%m-%d"`

# Target directory
MYPATH="$BASE/$NEXTYEAR"

# Our meetings are on the 3rd Tuesday of the target month
DAY=`cal $MONTH $NEXTYEAR | awk 'NF>4 { print $3 }' | sed -n '4p'`

###########################################################################
# Subroutines
###########################################################################

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
slug = "club-meeting"
dates = [ "Club Meetings" ]
outputs = [ "HTML", "Calendar" ]
update = 0
aliases = [ "" ]
+++
DONE
}

meeting_month() {

	FILENAME="$MYPATH/$LC_MONTH-meeting.md"
	[ -f "$FILENAME" ] || {
		EVENTDATE=`date -d "$CLUB_START $MONTH/$DAY/$NEXTYEAR" --iso-8601=seconds`
		build_club_meeting
	}

	FILENAME="$MYPATH/$LC_MONTH-ares-meeting.md"
	[ -f "$FILENAME" ] || {
		EVENTDATE=`date -d "$ARES_START $MONTH/$DAY/$NEXTYEAR" --iso-8601=seconds`
		build_ares_meeting
	}

}

activity_month() {

	FILENAME="$MYPATH/$LC_MONTH-meeting.md"
	[ -f "$FILENAME" ] || {
		EVENTDATE=`date -d "$CLUB_START $MONTH/$DAY/$NEXTYEAR" --iso-8601=seconds`
		build_activity
	}

}

###########################################################################
# Main code
###########################################################################

# Make sure we're in the right starting place
[ -d $BASE ] || \
	(echo "Not at root of web source tree."; exit 1)

# Ensure that the target directory esists
[ -d "$MYPATH" ] || mkdir "$MYPATH"

# Add a meeting next year for this month
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

