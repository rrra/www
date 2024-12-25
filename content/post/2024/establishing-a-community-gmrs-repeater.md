+++
date = "2024-12-17T01:47:55-06:00"
title = "Establishing a Community GMRS Repeater"
categories = [ "Education", "Technical" ]
tags = [ "GMRS", "Crosspost" ]
xpostLink = "https://daily.hamweekly.com/2024/12/gmrs-repeater-station-k8ebr/"
xpostName = "Amateur Radio Daily"
xpostComment = "By Tom Pierce (K8EBR)"
+++
## Background

The local ham club in my home town is the
[Mile High Radio Club](https://milehighradioclub.org/) or MHRC.
As a public service the MHRC recently committed to providing the entire
local community with a GMRS repeater. This location is 
[Idyllwild](https://idyllwildcalifornia.com/hiking/),
California which is to say that we live relatively isolated in a very
small mountain village high on Mt. San Jacinto in Southern California.
Village elevation is 5200 ft. and is embedded in a forest of tall pine
and cedar. Wildfires and earthquakes are a constant worry here because
the infamous San Andreas fault is a few miles away. Also, Idyllwild has
become a favorite tourist destination for hikers who use the countless
wilderness trails and seem to create their own emergencies on a regular
basis.
<!--more-->

## The GMRS Radio service

GMRS radio stands for General Mobile Radio Service. Prior to 1987 this
service was known as Citizens Band Radio (CB).

GMRS is a licensed radio service in the U.S. that operates on
frequencies in the UHF (Ultra High Frequency) band. These radios offer
longer-range communication compared to Family Radio Service (FRS)
radios, making them ideal for outdoor adventures and emergencies or
simply a convenient mode of communication.

## Obtaining an FCC GMRS license

To use GMRS radios legally, you need to obtain a GMRS license from the
Federal Communications Commission (FCC). Unlike Amateur Radio (Ham
radio) a genuine FCC license requires no test but does include a $35 fee
to be renewed in ten years. One GMRS license enables all family members
to operate a GMRS radio. The FCC has operational rules to follow and
they are simple and straightforward mostly along the lines of common
sense and courtesy.

* [Obtain a GMRS license online](https://www.fcc.gov/wireless/universal-licensing-system)
* [FCC GMRS information](https://wireless2.fcc.gov/UlsEntry/licManager/login.jsp)

## GMRS Radio

Typically, GMRS users have small two-way handheld radios that enable
radio communication between any two points. If you already have an
amateur 70cm handheld then you may have all you need to use GMRS; the
two bands have very close frequency requirements. These little radios
vary in price from as little as $17 (from Amazon or Radioddity) to
hundreds of dollars. GMRS handheld radios power is rated in watts
ranging from under 5 watts to 50 watts; their power pretty much
determines its useful range. My own handheld amateur transceivers are
inexpensive Baofeng UV-5R units which serve 2-meters, 220MHz, 70cm, and
GMRS very well. However, the Baofeng doesn't like the short simplex GMRS
steps so my HTs are limited to repeater coverage. 

## GMRS Explained

The GMRS band uses two frequency ranges, simplex and repeater. The
22 available simplex frequencies begin with the transmit frequency
462.5500MHz and run in 25KHz steps to 467.7125MHz. Repeater frequencies
also begin with 462.550 but have just 8 channels ending with 462.725MHz.
Repeater power limit is 50 watts while simplex ch 9-15 is limited to
5 watts and 0.5 watts for ch 16-22. The receive frequency is always a
5MHz positive offset. This should look a bit familiar because the rules
are almost the same for 70cm amateur band including the FM bandwidth
and PL tone or CTCSS sub-audio tone. In fact, I recommend this antenna
configuration for use on the 70cm amateur band except the element length
should be bit longer at 6.5 inches. 

## GMRS Antenna

As an old-fashioned ham operator, I begin any radio project with the
antenna while the electronic equipment is secondary. This antenna is
installed a few miles north of town where the elevation is 800 ft.
higher so good coverage for the entire town is assured.

Repeater antenna required properties:

1. For the assigned repeater frequency, a quarter-wavelength is only 6.0 inches long making antenna dimensions conveniently short.
1. Vertical polarization is assumed because typical application will be handheld transceivers.
1. Repeater antenna should have a low angle of radiation and be omni-directional.
1. This antenna will be coax fed so should have an inherent 50 ohm input impedance.
1. My favorite omni-directive antenna that conforms to these properties is an inverted-Y configuration; see 
[Amateur Radio Weekly archive #298](https://hamweekly.com/archive/issues/amateur-radio-weekly-issue-298.html).

The inverted-Y antenna uses quarter-wave elements. This is a length of
15.4cm or 6.0 inches long. The angle between the two lower elements is
90o and adjusting this angle may be used to precisely impedance match
the antenna to the coax.

My antenna was fabricated using small diameter brazing rod (any hardware
store) because it is very conductive plus stiff enough to withstand
fairly heavy wind loading. The antenna mast is a fiberglass tubing where
a 5-ft. long broom handle was used which is significantly cheaper, and
probably stronger, than online antenna fiberglass tubing sources. ~~For a
precisely calculated element length use the following relationship:~~

This antenna is amazingly simple; the photo
[[in the original article](https://daily.hamweekly.com/2024/12/gmrs-repeater-station-k8ebr/)]
tells the whole story. I cut the elements a few inches too long and
then trimmed each wire a fraction of an inch at a time while watching
the network analyzer impedance chart. The antenna was tuned using
a NanoVNA network analyzer. If you intend to build this antenna or
experiment with any UHF antenna then there is very likely a NanoVNA in
your future. They inexpensive, under $50, and I consider mine as an
indispensable instrument in my shack. Using a repeater dramatically
improves the performance of a handheld transceiver by receiving its
transmitted signal and broadcasting that same signal as a substantially
more powerful and wider coverage signal. The best way to extend the
range of a GMRS handheld transceiver is to use a repeater if you have
one in your community.

Antenna design analysis was performed on computer primarily using method
of moments program 4NEC2 which is available free online while antenna
measurement data was obtained using a NanoVNA vector network analyzer.
The NanoVNA is available online from Amazon or AliExpress and its
computer software is available online for free.

[Read the original article for accompanying graphics...](https://daily.hamweekly.com/2024/12/gmrs-repeater-station-k8ebr/)
