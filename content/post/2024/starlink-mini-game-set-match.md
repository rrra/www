+++
date = "2024-08-15T11:11:13-05:00"
title = "Starlink Mini - Game, Set, Match for Emergency Communications"
slug = "starlink-mini-game-set-match"
authors = [ "N8GNJ" ]
categories = [ "Technical" ]
tags = [ "Zero Retries" ]
#featured = true or start date
#endFeatured = date
#siteBanner = true or start date
#bannerText = "text (or valid markdown) to over-ride self link" 
#endBanner = date (default is endFeatured date) 
+++
I intend no disrespect to all the varied Emergency Communications
activities that are performed within Amateur Radio, or those that
perform them. The emergence of Starlink as a Broadband Internet
Access sysàtem with few dependencies other than power has changed the
paradigm of emergency communications. But now, but the emergence of
the new ***Starlink Mini*** has ***profoundly*** changed the paradigm of
emergency communications.
<!--more-->

{{< figure src="https://substackcdn.com/image/fetch/w_1456,c_limit,f_webp,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F81af456c-c092-4346-a667-aa32787c1119_538x803.heic" attr="Image courtesy of SpaceX / Starlink and Zero Retries" alt="Image of a hiker with a StarLink Mini strapped to the outside of their backpack" >}}

The photo above tells the story at a glance about how well-suited
[Starlink Mini](https://www.starlink.com/specifications?spec=5)
is for providing emergency communications when normal communications
such as cellular or consumer Internet access are unavailable. Starlink
Mini is light enough and compact enough to be carried on one’s back
(or in a backpack). It can be powered by any USB-C power source,
including compact USB-C battery packs (for at least a few hours) or an
AC to USB-C power adapter. Wi-Fi and Ethernet are built-in on the unit.
It’s managed by a smartphone app. To set it up, open the app, follow
the instructions for orienting it optimally (though it will likely work
acceptably by laying flat if there is enough clear sky). Within a few
minutes at most you are connected to the Internet at broadband speeds.
It can easily be remoted to a rooftop using a simple and inexpensive
power extension cord and an Ethernet cable. It will work *nearly*...
***anywhere!***

The reason I bring this up is that a Zero Retries reader contacted
me about an article about a "Go Box" to set up Winlink and noted
“things have changed now that Starlink Mini is available”.

*Disclaimer --- Yes, Starlink is a subscription service, and you have to
buy Starlink Mini for a few hundred dollars and keep a service plan
active for one’s Starlink Mini to be ready to use at a moment’s
notice. To use one’s Starlink unit for emergency communications
will likely mean exceeding the "inexpensive" service tier’s
maximum data transfer limit of 50 GB. Acknowledged that those are real
issues now, but Starlink has exhibited considerable flexibility in
adjusting its services in response to changing business conditions.
It’s my (optimistic) guess is that in a declared emergency, if one
asks, Starlink can temporarily waive data transfer limits or cost
penalties for "excessive usage".*

### Winlink, Briefly

The goal of using Winlink, of course, is to be able to send Internet
email over Amateur Radio spectrum, both HF and VHF / UHF. Using Winlink
used to be a bit fraught with peril because of the relatively poor data
modes Amateur Radio has traditionally used for Winlink. Formerly the
only good option had been the pricey and proprietary 
[Pactor 4 modem](https://www.p4dragon.com/)
for HF. Now there are other options for Winlink, especially VARA - FM
for VHF / UHF and VARA HF for HF. The cost of a VARA license and audio
adapter to use VARA FM and VARA HF are a fraction of the price of a
PACTOR 4 modem, and work comparably on HF, and work great on VHF / UHF
(up to 25 kbps).

### Starlink Mini / Winlink Go Kit Comparison

But consider the bigger picture here in “Winlink versus Starlink
Mini” as a “Go Kit” solution (in approximately the same form
factor):

* Winlink is “narrowband” email, with some capability for attached files.
* Starlink Mini is a broadband Internet system, and thus can handle
*any* Internet activity - video cameras, video conferences, viewing
streamed video, file transfers, email, Voice Over IP telephone... *and*
can do all of that for *multiple client devices* such as multiple
laptops connected via Ethernet or Wi-Fi.
* A Winlink Go Kit is a complex assemblage of radio(s), modems,
computers, software, antennas, power supplies, and integration.
* A Starlink Mini is simple by comparison - power from a USB-C source,
and connect to it via Ethernet or Wi-Fi, use normal Internet systems
such as web browser.
* A Winlink Go Kit can only be used by an Amateur Radio Operator who
is trained / practiced in using the combination of the radio, the
modem, the computer, and the software, and all of the procedures on how
transmit and receive via Winlink.
* A Starlink Mini can be used by anyone; it’s effectively
“unlicensed” wireless Internet. The app is easy to understand, and
once it acquires the satellite constellation, it just works when you
connect to it with Wi-Fi or Ethernet. The app provides status, devices
connected, some management, and diagnostics including a speed test for
troubleshooting and it can tell you if there’s an issue with the
satellites, or obstruction.
* Winlink requires some infrastructure, especially when using VHF / UHF
Radio Mail Servers (RMS).
* A Starlink Mini requires comparatively little infrastructure now
(a regional Starlink Ground Station) and in the future will require
practically no infrastructure through the use of inter-satellite links.

### Analogy - Autopatch

I think there’s a useful analogy in Amateur Radio’s
very active use, and then complete disuse, of
“[Autopatch](https://en.wikipedia.org/wiki/Autopatch)” on VHF / UHF
repeaters. As a new Amateur Radio Operator in the mid-1980s, one of
the most popular uses of repeaters was autopatch - “automatic phone
connection”. If you wanted to make a phone call from your portable
or mobile VHF / UHF radio, you could easily and quickly command the
repeater to connect a phone line, dial a call with touch tones from
your radio, have your conversation, and then disconnect the phone line.
Autopatch was an incredibly popular feature of repeaters... but no one
uses autopatch any more. There’s no technical reason not to continue
using autopatch; it would work as well in the mid 2020s as it did in the
mid-1980s, and there’s only a minor cost issue in having a telephone
line connected to a repeater for a monthly fee.

The reason that no one uses autopatch any more is because using one’s
own mobile phone is *so superior to using autopatch* that it’s no
longer even a *question* about using autopatch. Why would you even want
to consider using autopatch?

I think that’s the situation we’re now in with Winlink, albeit
at the very beginning of the situation where Starlink (Mini) is such
a superior solution to the issue of emergency communications. But
I believe that the conclusion will eventually be the same as with
autopatch; no one will consider using Winlink because using Starlink
([and other similar systems now in development](https://www.zeroretries.org/p/zero-retries-0164?open=false#footnote-5-147323902))
will be a far superior solution for emergency communications.

### On Beyond Starlink - Mobile Phone Direct to Satellite

Not to mention... by the end of this decade, we may not even need
Starlink to use at least basic satellite connectivity from our mobile
phones in an emergency, thanks to:

* [Apple Satellite Messaging](https://www.satellitetoday.com/connectivity/2024/06/11/apple-expands-satellite-messaging-capabilities-with-ios-18/) in its newest generations of iPhones (uses
[Globalstar](https://www.globalstar.com/en-us),
* [SpaceX and T-Mobile](https://www.lightreading.com/satellite/spacex-says-t-mobile-s-direct-to-cell-service-launching-commercially-this-fall)
providing satellite communications using normal mobile phones,
* [AST Space Mobile](https://ast-science.com/)
will also provide satellite communications using normal mobile phones.

It’s amazing to me that [Iridium](https://www.iridium.com/),
the one “phone works everywhere on the planet via satellite”
service provider, has fallen out of the conversation versus the above
developments getting lots of attention.

*It’s a brave, interesting, much more communications-rich new world!*

{{< banner >}}
***Editors Note:***

This blog post by Steve Stroh N8GNJ was originally published in
[Zero Retries 0164](https://www.zeroretries.org/p/zero-retries-0164)

{{< /banner >}}

### About Zero Retries

>Zero Retries is an independent newsletter promoting technological
>innovation that is occurring in Amateur Radio, and Amateur Radio
>as (literally) a license to experiment with and learn about radio
>technology. Now in its fourth year of publication, with 1900+
>subscribers. Radios are computers - with antennas! [^1]

[^1]: "Zero Retries 0164", Zero Retries, accessed August 15 2024, https://www.zeroretries.org/p/zero-retries-0164.

:information_source: Visit [About Zero Retries](https://www.zeroretries.org/about) for more
information about this newsletter.

:inbox_tray: [Subscribe to the newsletter](https://www.zeroretries.org/subscribe?utm_source=menu&simple=true&next=https%3A%2F%2Fwww.zeroretries.org%2F)
to receive it by e-mail.



