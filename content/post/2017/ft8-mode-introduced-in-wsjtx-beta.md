+++
authors = [ "K0STK" ]
title = "New FT8 Mode included in WSJT-X Beta Release"
tags = [ "ARRL", "Digital", "FT8", "WSJTX", "Twitter" ]
slug = ""
publishdate = "2017-07-20T01:40:50-05:00"
description = ""
date = "2017-07-20T14:40:50-05:00"
categories = [ "Technical" ]

+++
WSJT-X version 1.8.0 includes a new mode named *FT8*

This mode features:

* QSOs 4 times faster than JT65 or JT9
* Sensitivity down to -20 dB on the AWGN channel
* Auto-sequencing includes an option to respond automatically to first decoded reply to your CQ

WSJT-X source code; along with installation packages for Windows,
Linux, OS X, and Raspbian; is available for download at
http://physics.princeton.edu/pulsar/K1JT/wsjtx.html
<!--more-->

{{< x user="arrl" id="885204735254552576" >}}

### About the FT8 protocol

>WSJT-X Version 1.8.0 includes a new mode called FT8, developed by K9AN
and K1JT.  The mode name "FT8" stands for "Franke and Taylor, 8-FSK
modulation".  FT8 uses 15-second T/R sequences, provides 50% or
better decoding probability down to -20 dB on an AWGN channel, and 
maintains good performance on Doppler-spread fading channels.  An
auto-sequencing facility includes an option to respond automatically
to the first decoded reply to your CQ.  FT8 QSOs are 4 times faster
than those made with JT65 or JT9.  FT8 is an excellent mode for HF
DXing and for situations like multi-hop E_s on 6 meters, where deep
QSB may make fast and reliable completion of QSOs desirable.
<span style="font-style:normal;">[ [1]({{< relref "#footnotes" >}}) ]</span>

>Some important characteristics of FT8:

>* T/R sequence length: 15 s
>* Message length: 75 bits + 12-bit CRC
>* FEC code: LDPC(174,87)
>* Modulation: 8-FSK, tone spacing 6.25 Hz
>* Constant-envelope waveform
>* Occupied bandwidth: 50 Hz
>* Synchronization: 7x7 Costas arrays at start, middle, and end
>* Transmission duration: 12.64 s
>* Decoding threshold: -20 dB; several dB lower with AP decoding
>* Multi-decoder finds and decodes all FT8 signals in passband
>* Optional auto-sequencing and auto-reply to a CQ response
>* Operational behavior similar to JT9, JT65


### Footnotes

[ 1 ] "WSJT-X Release Notes",
Joe Taylor K1JT, retrieved July 18 2017,
https://physics.princeton.edu/pulsar/k1jt/Release_Notes_1.8.0.txt.
