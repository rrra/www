+++
title = "10M Beacon"
date = "2018-02-27T09:53:00-06:00"
tags = [ "Beacon" ]
categories = [ "Technical" ]
aliases = [ "/beacon", "/10m-beacon" ]
+++
* [About the Beacon](#about-the-beacon)
* [Beacon Message](#beacon-message)
* [Reception Reports](#reception-reports)

### About the Beacon

* Call-sign: W0ILO
* Operating frequency: 28286.5 KHz
* Location: Sabin, Minnesota, approximately 8 miles SE of Fargo, North
Dakota
* Transmitter: [Kenwood TS-570](http://www.rigpix.com/kenwood/ts570s.htm)
* Controller: Arduino (software by AI0Q)
* Antenna: [Antron 99](https://www.rightchannelradios.com/products/antron-99-base-station-antenna), vertically polarized, estimated height ~ 125' ([antenna teardown](http://www.radiomanual.info/schemi/ACC_antenna/Solarcon_A-99_review.pdf))

### Beacon Message

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
transmission paths. And the slower speed may help listeners who need
slower morse code speeds to decode the beacon message when propagation
is good and steady.

### Reception Reports

{{< beacon-reports >}}
