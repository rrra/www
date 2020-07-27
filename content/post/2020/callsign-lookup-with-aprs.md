+++
date = "2020-07-27T11:11:07-05:00"
title = "Callsign Lookup With APRS"
authors = [ "K0STK" ]
categories = [ "Technical" ]
tags = [ "APRS" ]
+++
APRS users can lookup the license type and general location or address
associated with an Amateur Radio Callsign by sending a that callsign to
`WHO-IS` (or `WHO-15` for "clients and IGates that do not support non-AX.25
SSIDs." [^1])

<!--more-->

[^1]: "Callsign Lookup", APRS-IS, accessed July 26 2020, http://www.aprs-is.net/WhoIs.aspx.

### General Location

~~~
> W0ILO
< C/RED RIVER RADIO AMATEURS/ND/United States
~~~

### Address

~~~
> f W0ILO
< W0ILO: RED RIVER RADIO AMATEURS/C
< W0ILO: PO BOX 3215
< W0ILO: FARGO ND United States
~~~

### License Type Codes

These codes are displayed at the beginning of the general location message and
at the end of the name line of the address message

| Code | License Type |
|------|--------------|
| C    | Club         |
| E    | Extra        |
| G    | General      |
| T    | Technician   |

### About `WHO-IS`

`WHO-IS` is an [APRS Service](http://www.aprs-is.net/APRSServices.aspx)
which may be globally accessed from RF or TCP/IP APRS clients. `WHO-IS` is
maintained by Peter Loveall AE5PL and is a part of the
[APRS-IS](http://www.aprs-is.net/Default.aspx) software stack.

Other APRS Services include:

* [APRS-IS Servers](http://www.aprs-is.net/APRSServers.aspx)
* [CQ Server](http://www.aprs-is.net/CQSrvr.aspx)
* [Email Access](http://www.aprs-is.net/Email.aspx)
* [NWS Message Server](http://www.aprs-is.net/WX/)
