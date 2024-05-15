#!/bin/sh
#
# Name: add-contest-corral.sh
# By: Steve Kostecke (K0STK) steve@kostecke.net k0stk@arrl.net
# Date: $Id:$
#
# Purpose: Generate a blog post for next Contest Corral from the ARRL
# website
#
# Dependencies: date, dc, grep, echo, sed, wget, and an editor

# We must be in the root of our hugo source tree
YEAR=`date +%Y`
MYPATH="content/post/$YEAR"
[ -d $MYPATH ] || \
	(echo "Not at root of web source tree."; exit 1)

DATE=`date --iso-8601=seconds`
DLPATH="https://www.arrl.org/files/file/Contest%20Corral"

# Check to see if a contest corral exists for the month under consideration.
# Unfortunately arrl.org doesn't return a 404 for unavailable files, so we
# have to be creative. 
check_corral() {
	MON_NAME=`echo $M | sed '-e s/\(.\)/\U\1/'`
	DOWNLOAD="$DLPATH/$YEAR/$MON_NAME%20$YEAR%20Corral.pdf"

	wget --spider $DOWNLOAD 2>&1 | grep --quiet missing.png &&
		(echo "No download available."; exit 1)

}

# Uses variables assembled elsewhere
build_blog_post() {
cat << DONE > $FILENAME
+++
date = "$DATE"
title = "$MON_NAME Contest Corral"
authors = [ "K0STK" ]
categories = [ "Outreach" ]
tags = [ "Contesting" ]
+++
The
[$MON_NAME $YEAR Contest Corral]($DOWNLOAD)
is available for download from the
[ARRL Contest Calendar page](https://www.arrl.org/contest-calendar).

<!--more-->

{{% about-contest-corral %}}

WA7BNM Contest Calendar Website

: https://www.contestcalendar.com/

WA7BNM Contest Calendar Contact

: {{< mailto WA7BNM name >}}

{{% about-arrl-contest-calendar %}}
DONE
}

# Main loop - create a blog post for the first available month
MONTHS="january february march april may june july august september october november december nextyear"
for M in $MONTHS;
do
	# What to do if we're done for the year
	if [ "nextyear" = $M ];
	then
		YEAR=`echo $YEAR 1 + p | dc`
		MYPATH="content/post/$YEAR"
		M="january"
	fi

	# Skip months with existing blog entries
	FILENAME="$MYPATH/$M-contest-corral.md"
	[ -f "$FILENAME" ] && continue

	# Work happens here
	check_corral 
	build_blog_post
	sensible-editor $FILENAME

	# Stop after we create a blog entry
	break
done

