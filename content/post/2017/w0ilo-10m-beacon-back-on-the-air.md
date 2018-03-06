+++
title = "W0ILO 10M Beacon Back On The Air"
tags = [ "Beacons" ]
slug = ""
description = ""
date = "2017-06-02T10:10:09-05:00"
categories = [ "Technical" ]
authors = [ "AI0Q" ]

+++
RRRA's W0ILO 10M beacon is operational again thanks to the efforts of W0HNV,
WB0BIN, and AI0Q at the Sabin beacon site on May 27th, 2017.
<!--more-->
	
The rig and beacon controller were tested into a dummy load, and the
feedline and antenna were checked with an analyzer. All of the equipment
was found to be in good working order and the beacon was placed in service.
It has been operating since the 27th.

On June 2nd AI0Q received several reports of reception: one from North
Carolina and one from Alabama. Both stations received the W0ILO 10M
Beacon via sporadic E propagation.

{{< beacon-reports >}}

## About the W0ILO 10M Beacon

* Operating frequency: 28286.5 KHz
* Beacon location: Sabin, Minnesota, approximately 8 miles SE of Fargo, North
Dakota
* Transmitter: [Kenwood TS-50](http://www.rigpix.com/kenwood/ts50s.htm)
* Controller: Arduino
* Antenna: Antron 99, vertically polarized at 140'

The beacon sends a 3 block morse code message:

	W0ILO SABIN MN   W0ILO 5 W VERT   W0ILO EN16
		
	(location) (output power/antenna) (grid square)

The message is repeated at alternating speeds: first at 15 words per
minute and then at 20 words per minute. Some automated monitoring
stations report message speeds of 13 and 17 words per minute. This discrepancy
may be due to Arduino processing overhead.

The beacon message was designed to be resistant to changing band
conditions and to be easy to receive by using:

* Short message length
* Call-sign repetition

Transmitting the beacon message at two speeds is intended to help
listeners. The faster speed may allow complete message reception
when propagation conditions do not allow for sufficiently long lived
transmission paths. And the slower speed may help listeners who need slower
morse code speeds to decode the beacon message when propagation is good
and steady.

