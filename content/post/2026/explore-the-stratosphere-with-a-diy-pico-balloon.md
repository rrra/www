+++
date = "2026-01-31T12:44:07-06:00"
#publishdate = "2026-01-31T12:44:07-06:00"
title = "Explore the Stratosphere With a DIY Pico balloon"
categories = [ "Technical" ]
tags = [ "WSPR", "Crosspost" ]
xpostLink = "https://spectrum.ieee.org/explore-stratosphere-diy-pico-balloon"
xpostName = "IEEE Spectrum"
xpostComment = "Visit the original article for the accompanying graphics.<br><br>This article appears in the IEEE Spectrum February 2026 print issue as *Long-Duration Amateur Ballooning*."
thumbnail = "https://assets.rbl.ms/26794698/origin.png"
+++
**A tiny ham-radio transmitter lets you track a balloon globally**

There’s an interesting development in amateur ballooning: using
so-called [superpressure balloons][sb], which float high in the
atmosphere indefinitely rather than simply going up and up and then
popping like a normal weather balloon. Superpressure balloons can last
for months and travel long distances, potentially circumnavigating the
globe, all the while reporting their position.

[sb]: https://en.wikipedia.org/wiki/Superpressure_balloon

You might imagine that an undertaking like this would be immensely
difficult and cost thousands of dollars. In fact, you can build and
launch such a balloon for about the cost of a fancy dinner out. You just
have to think small! That’s why amateur balloonists call them pico
balloons.
<!--more-->

The payload of a pico balloon is so light (between 12 to 30 grams) that
you can use a large Mylar party balloon filled with helium to lift it.
They’re also inexpensive; that’s important because you won’t
get your payload back. And because such diminutive payloads don’t
pose a danger to aircraft, they aren’t subject to the many rules and
restrictions on free-floating balloons that carry more mass.

The essential advances that made pico ballooning possible were figuring
out how to track a balloon no matter where in the world it might be
and how to power such tiny payloads. A lot of folks worked on these
challenges and came up with good solutions that aren’t hard or
expensive to reproduce.

### What is WSPR?

Amazingly, the global tracking of the balloon’s [telemetry] is done
without [satellites]. Instead, pico balloonists take advantage of
an [amateur-radio] network called [WSPR] \(Weak Signal Propagation
Reporter\), a protocol developed by a rather famous ham-radio
enthusiast---[Joseph Hooton Taylor Jr.][jt], one of the two scientists
awarded the 1993 [Nobel Prize] in Physics for discovering binary
pulsars.

[telemetry]: https://spectrum.ieee.org/tag/telemetry
[satellites]: https://spectrum.ieee.org/tag/satellites
[amateur-radio]: https://spectrum.ieee.org/tag/amateur-radio
[WSPR]: https://en.wikipedia.org/wiki/WSPR_(amateur_radio_software)
[jt]: https://en.wikipedia.org/wiki/Joseph_Hooton_Taylor_Jr.
[nobel prize]: https://spectrum.ieee.org/tag/nobel-prize

WSPR was designed to monitor signal-propagation conditions for different
radio bands—useful information if you’re a ham trying to make
distant contacts. WSPR can also record [low-power] balloon-telemetry
signals. WSPR is very low bandwidth—less than 10 bits per minute—but
it does the job. A worldwide network of radio amateurs receives these
WSPR signals and reports them publicly over the [internet], which gives
picoballoonists a way to track their flights. You need at least a
[general-class] ham-radio license to launch a pico balloon, as one is
required to transmit on the bands used for long-distance telemetry.

[low-power]: https://spectrum.ieee.org/tag/low-power
[internet]: https://spectrum.ieee.org/tag/internet
[general-class]: https://www.arrl.org/upgrading-to-a-general-license

## The Payload

The pico balloon payload I chose to build is based on the aptly named US
$4 [Raspberry Pi Pico board][pi], with a solder-on daughterboard that
contains a [GPS] receiver and transmitter. The folks who developed this
daughterboard and associated software (to create what they call the
[Jetpack WSPR Tracker][jet]) have done a fantastic job of making their
work easy to reproduce.

[pi]: https://www.adafruit.com/product/4864
[GPS]: https://spectrum.ieee.org/tag/gps
[jet]: https://traquito.github.io/tracker/

You could, in principle, power the Jetpack tracker with [batteries],
but in practice it would be impossible to keep them warm in the
stratosphere, where average temperatures can be as low as –51 °C.
Instead, the tracker runs off two lightweight solar modules. At night,
it gracefully powers down. When the sun rises high enough in the
morning, the tracker powers up and starts transmitting again.

[batteries]: https://spectrum.ieee.org/tag/batteries

{{< banner >}}
My first pico balloon made it only halfway across the Atlantic before
going silent.
{{< /banner >}}

I had five Jetpack boards custom-manufactured in [China] for just $39.
The cost nearly doubled after adding shipping and tariff charges. Still
that’s really cheap, even when you add the cost of the Raspberry Pi
($4), [the party balloon][balloon] \($10 for two\), the helium ($10 at
my local supermarket), and the two [solar modules][solar] \($7 each\).

[China]: https://spectrum.ieee.org/tag/china
[balloon]: https://www.amazon.com/dp/B0F28ZWPY6
[solar]: https://www.amazon.com/PowerFilm-MPT6-75-Module-Flexible-Thin-Film/dp/B002MFGD16

The biggest sticking point I had with the Jetpack design was the
liberties it takes with spurious emissions from its transmitter. Federal
Communications Commission ([FCC]) regulations call for spurious emissions
to be at least 43 decibels below the power of the transmitted signal.
But my transmitter had strong unwanted emissions at odd harmonics of the
fundamental frequency. (That’s because the transmitter is a [Si5351A]
temperature-controlled oscillator, which outputs a square wave, not a
sinusoid.) Taking measurements, I could see that the third harmonic at
42 megahertz was only 25 dB quieter than the 14-MHz fundamental of my
WSPR signal’s frequency.

[fcc]: https://spectrum.ieee.org/tag/fcc
[Si5351A]: https://cdn.sparkfun.com/assets/3/e/a/9/a/Si5351-datasheet.pdf

In practical terms, this shouldn’t create any noticeable interference,
given that this transmitter puts out milliwatts at most and floats miles 
away from the nearest receiver. Still, I wanted to be fully compliant
with FCC regulations, so I added traps to the antenna—simple circuit
elements that hams use to allow a single antenna to work on multiple
bands by altering how the antenna resonates at different frequencies.
Each trap was made of a small inductor (four 5-millimeter-diameter loops
of No. 32 magnet wire) in parallel with a 220-picofarad capacitor. I
tuned them with the help of a NanoVNA signal analyzer by stretching
the loops apart slightly. I attached the traps directly to the tracker
board, so that they quashed the spurious 42-MHz emissions at the source.
That worked well and added only 0.3 grams of weight.

### The Launch

With my payload complete, I partially filled my balloon with helium. You
want the balloon to hold just a little more gas than it takes to lift
the payload off the ground. This will give the helium room to expand as
the balloon climbs to its final altitude.

My first pico balloon, launched from a park near my home in North
Carolina, made it only halfway across the Atlantic before going silent.
My second went up and was never heard from again. The third was indeed
the charm. It crossed the Iberian Peninsula and at the time of this
writing is somewhere over the Mediterranean at an altitude of nearly 12
kilometers. With any luck, [it might go][img] on to orbit the planet.

[img]: https://traquito.github.io/search/spots/dashboard/?band=20m&channel=104&callsign=N4LVD&dtGte=2026-01-01

I’m a little puzzled about the balloons’ telemetry messages received
on the WSPR network, as they have been few and far between. My best
guess is that power from the horizontal solar panels I’m using
is marginal, with the winter sun being so low in the sky. That’s
something I should have thought about before launching the first balloon
just 24 hours after the winter solstice!

### About The Author

[David Schneider] is a former editor at IEEE Spectrum, and continues to contribute Hands On articles. He holds a bachelor's degree in geology from Yale, a master's in engineering from UC Berkeley, and a doctorate in geology from Columbia.

[David Schneider]: https://mobile.twitter.com/spectrumdave
