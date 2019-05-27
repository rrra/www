+++
title = "IRLP"
date = "2019-05-23T11:40:00-05:00"
tags = [ "IRLP", "Repeaters" ]
categories = [ "Technical" ]
#authors = [ "K0STK" ]
+++
* [What is IRLP?](#what-is-irlp)
* [Central ND IRLP Hotlink](#central-nd-irlp-hotlink)
* [Using IRLP](#using-irlp)
   * [Rules of Operation](#rules-of-operation)
   * [Connecting](#connecting)
   * [Disconnecting](#disconnecting)
* [Central ND Hotlink Features](#central-nd-hotlink-features)
* [ND IRLP Station Nodes](#nd-irlp-station-nodes)
* [IRLP Reflectors](#irlp-reflectors)
* [Need Help?](#need-help)
* [Would You Like To Know More?](#would-you-like-to-know-more)

### What is IRLP?

>The Internet Radio Linking Project, also called IRLP, is a
>[closed-source](https://en.wikipedia.org/wiki/Closed-source)
>project that links amateur radio stations around the world by using
>[Voice over IP](https://en.wikipedia.org/wiki/Voice_over_IP) (VoIP).
>Each gateway consists of a dedicated computer running custom
>software that is connected to both a radio and the Internet. This arrangement
>forms what is known as an IRLP Node. Since all end users communicate using a
>radio as opposed to using a computer directly, IRLP has adopted the motto
>"Keeping the Radio in Amateur Radio".[^1] 

IRLP users are able to communicate worldwide using their VHF/UHF radios
though simplex or repeater based station *nodes*. These nodes can be
connected to one other station (i.e. single connection) node or to a
*reflector* node (e.g. a party-line node).

The first IRLP nodes were installed in British Columbia during November of
1998.

The IRLP website is [http://irlp.net/](http://irlp.net/)

[^1]: "Internet Radio Linking Project", Wikipedia, Retrieved May 23 2019, https://en.wikipedia.org/wiki/Internet_Radio_Linking_Project.

### Central ND IRLP Hotlink

The Central ND IRLP Hotlink is a group of repeater nodes which are
configured to automatically maintain their connections to IRLP Reflector
channel 9366.

These nodes may be manually connected to other another node/reflector.
They will automatically reconnect to IRLP Reflector channel 9366 following the
receipt of a [disconnect command](#disconnecting) breaking the connection to a
remote node/reflector or after a period of inactivity.

#### Nodes

These repeaters all require a CTCSS (aka *"PL"*) tone, and provide
CTCSS squelch (aka *reverse tone*), of 123.0.

* Carrington (#3698)
* Devils Lake (#3317)
* Maddock (#3391)

### Using IRLP

#### Rules of Operation

IRLP users should review the
[IRLP Operating Guideline page](http://www.irlp.net/guidelines.html)
before beginning to use the system.

The most important guideline to remember is leaving a pause after
pressing the PTT button as well as between transmissions.


#### Connecting 

1. Listen for a reasonable amount of time to see if the node is in use
1. Identify and announce your intent
1. Enter DTMF `73` to ensure the node is disconnected
1. Listen for a response
1. Enter the four digit code (as DTMF) for the node or reflector you wish to connect to
1. Listen for a connect or busy message
1. Disconnect the node at the end of your communication

#### Disconnecting

1. Identify and announce your intent
1. Enter DTMF `73` to disconnect from the remote node/reflector
1. Listen for a response

#### Central ND Hotlink Features

##### Weather Radio

These repeaters are equipped to receive NOAA Weather Radio.

Location | NOAA Station
---------|-------------------
Carrington | Jamestown WXL81
Maddock | Sheyenne KWN46
Devils Lake | Webster WWG25
Minot | Minot WXL83

The weather radio receivers are automatically activated (for 3 minutes)
by NOAA weather alerts and may manually controlled using these DTMF commands:

Command | Action
--------|-------
`98` | Activates the weather radio receiver for 3 minutes
`93` | Disables the weather radio receiver

##### Repeater Status Readback

Retrieve spoken repeater information with these DTMF commands:

Command | Reply
--------|-------
`*8` | Current time
`*3` | Current date
`411` | Repeater connection
`611` | Time

### ND IRLP Station Nodes

Location    | ID | Frequency | Node # and connection
------------|----|-----------|----------------------
Carrington  | K0BND | 146.67- T123 | 7805 -> R9100
Carrington  | ND0B | 146.57- T123 | 3698 -> R9366 (auto)
Devils Lake | WD0FFQ | 146.99- T123 | 3117 -> R9366 (auto)
Fargo       | K0EED | 145.49- T82.5 | 4549 -> R9366 (manual)
Maddock     | KF0HR | 147.24+ T123 | 3391 -> R9366 (auto)
Minot       | K0AJW | 146.97- T67 | 3906 IDLE

### IRLP Reflectors

Selected reflectors of local interest.

Channel | Name | Notes
--------|------|------
9366 | ND Hotlink |
9367 | ND Reflector | Minot net 7pm Sunday evenings
9100 | WIN System | Connects 70+ repeaters in California and world-side; very *un-hamradio* culture. <span style="color:red;">NSFW</span>
9109 | The Alaska Net | At noon (Alaska time)
9070 | Another Alaska Net
9050 | East Coast Reflector | Tuesday night technical net
9732 | Cross Roads Reflector | SD & ND *EMCOMM*

A complete list of reflectors is available on the [IRLP status page](http://status.irlp.net/).

### Need Help?

Please contact {{< mailto ND0B name >}} for assistance with IRLP.

### Would You Like To Know More?

* Visit the [IRLP website](http://irlp.net/)
* Read the [IRLP Wikipedia Article](https://en.wikipedia.org/wiki/Internet_Radio_Linking_Project)
* Read the [Another Canadian Invention is Sweeping the World](https://www.eham.net/newham/irlp) article at eHam.net
* Find more references on the [IRLP In The News](http://irlp.net/in-the-news.html) page
* Read the stories and testimonials on the [IRLP Stories](http://www.irlp.net/stories.html) page
