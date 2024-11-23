+++
date = "2024-11-23T10:29:02-06:00"
#publishdate = "2024-11-23T10:29:02-06:00"
title = "Explaing the Use Case for Data Over Repeater - Part 1"
categories = [ "Technical" ]
tags = [ "Zero Retries", "Crosspost" ]
xpostLink = "https://www.zeroretries.org/p/zero-retries-0179?open=false#%C2%A7explaining-the-use-case-for-data-over-repeater-part"
xpostName = "Zero Retries 0179"
xpostComment = "See the original article page for reader comments."
+++
In ***Zero Retries 0175*** --- [MMDVM-TNC is (Kind of)
Real](https://www.zeroretries.org/i/150495953/mmdvm-tnc-is-kind-of-real), I wrote:

>I plan to do a future article in Zero Retries --- **Explaining the Use Case
>for Data Over Repeater**, about why such a data capability is important.
<!--more-->

Clinton Blackmore VE6CWB recently sent me an email, which I’m
reprinting here with his permission. I’m including explanations to his
questions because he asked some good questions which help me frame the
longer discussion that will be Part 2.

>It seems like you've mentioned MMDVM repeaters a fair bit recently in
>Zero Retries --- enough that it’s caught my attention.
>
>I'm happy to wait for your forthcoming explanation --- "Explaining the Use
>Case for Data Over Repeater" --- promised in ZR 0175. In preparation for
>that article, I have a few questions and I hope you'll answer address
>them.
>
>It sounds like you might add data transmission as a supplement to
>regular repeater activities. Would it just be using the repeater for
>data some of the time and voice at other times? Or would you imagine
>having extra frequencies (or wider bandwidth) for the repeater?

The very easiest mental model for the usage of a mixed mode FM voice
/ MMDVM-TNC data repeater is that hundreds or thousands of mixed mode
repeaters *already exist and are deployed and in use...** it’s just
that the “data” capability of those repeaters is "fixed formatted"
into digital *voice* (which in the end, is transmitted as data, not
conventional FM voice). Example:

* Yaesu kickstarted the widespread deployment of mixed
mode repeaters in the US with their DR-1X and now their
[DR-2X](http://systemfusion.yaesu.com/) repeaters --- FM voice and System
Fusion digital voice (with a little bit of data).

* Icom’s
[current D-Star repeaters](https://www.icomjapan.com/lineup/products/digital_system/)
are mixed mode --- FM voice and D-Star digital voice (with a little bit
of data).

* Hytera’s DMR repeaters are mixed mode --- FM voice and DMR digital
voice.

All of these repeaters listen on the input frequency for FM voice *and*
(their flavor of) digital voice, and then…

* When an FM voice signal is received, the repeater transmits FM voice.

* When a digital voice signal is received, the repeater transmits
digital voice.

---

>**"Data capability” on D-Star, System Fusion, DMR, and P25**
>
>It’s a completely different discussion, perhaps meriting a detailed
>treatment at some point in the future, but D-Star, System Fusion,
>DMR, and P25 digital voice modes all incorporate some limited data
>capabilities. Thus with the installation of a new mixed mode D-Star,
>System Fusion, DMR, or P25 repeater, there (could have been) a data
>capability “built in”. Thus you might consider this entire
>discussion of mixed mode repeaters (FM voice / MMDVM-TNC data) to be
>moot.
>
>However, in my studies of the data capabilities of all of these systems,
>the data capability in those systems is an afterthought at best, or
>only partially (poorly) implemented or in the case of System Fusion,
>deliberately limited. Not to mention the data capabilities in these
>systems is now far behind the current state of the art, such as no use
>of Forward Error Correction (FEC) for data.
>
>Thus, to add good, reasonably fast data capability to a repeater[^2],
>Amateur Radio has to invent new technology, such as adding an MMDVM and
>incorporating MMDVM-TNC data, or perhaps M17 or Opulent Voice. All of
>these new systems have a well-implemented data capability in addition to
>digital voice.
>
>If I receive enough feedback that Zero Retries readers want to read a
>detailed critique of the limited data capabilities of D-Star, System
>Fusion, DMR, and P25, let me know.

---

[^2]: Because they have extensive inputs and outputs designed for use by external repeater controller systems, the digital voice repeaters mentioned here could, possibly, be also retrofitted with an MMDVM that’s operated in the repeater’s FM mode.

Thus, what I’m proposing with retrofitting FM voice repeaters,
continuing the primary use of an FM repeater’s existing voice
operations, and adding an MMDVM to support a secondary use of MMDVM-TNC
data is *conceptually the same* as what we’ve been doing for years on
hundreds or thousands of existing mixed mode repeaters.

My observation over decades of promoting the conversion of
little-used FM voice repeaters for 9600 bps FSK data (and creation
of new such repeaters) is that *no repeater owner is willing
to do so.* The idea of “data repeaters” is just completely
foreign and not understood, and there are only historical
examples to cite such as [The Puget Sound Amateur Radio TCP/IP
Network](https://www.superpacket.org/2021/03/the-puget-sound-amateur-rad
io-tcpip-network-circa-1995.html). Thus a scheme like adding MMDVM
and the subsequent ability to *also* use MMDVM-TNC data, that can
(theoretically) switch seamlessly from FM voice to MMDVM-TNC data will
likely be better received.

Extra frequencies is an interesting idea, especially if the repeater
could receive on another input channel, possibly on another band.
I’m not currently promoting wider bandwidth, though I’m definitely
promoting the preservation of current (non-narrowband) channels.

>Also, I'm dying to know, as transmitting data over a repeater in an
>infrastructure-up situation doesn't make a lot of sense (vs. downloading
>files from the internet) unless you hope people skill-up and can use
>it in an infrastructure-down situation. What sort of data might one
>transmit? (I seem to recall you saying something about FLArq in this
>vein, too).

In an “infrastructure up” (*neat descriptor!*) situation, I’m
positing using a repeater in data mode in the same way we currently
use a repeater for voice. In "infrastructure up" situations, we
certainly don’t *need* to use repeaters for voice communications --- we
have mobile phones and mobile phone networks for any conceivable voice
needs.

The "broadcast files" capability I referenced is actually
[flamp](http://www.w1hkj.com/flamp-help/index.html)[^3] which
stands for **Fast Light Amateur Multicast Protocol**. flamp is one of the
fldigi suite of data modes. Literally any useful file can be distributed
via flamp --- maps, weather bulletins, repeater / node frequencies (code
plugs), local Amateur Radio events and nets calendar, club bulletins,
photos, even rudimentary web pages --- pure HTML is remarkably compact. If
you have a receiver on the flamp frequency, even a computer as simple
as a Raspberry Pi Zero 2 W is usable for this purpose, and there’s
no transmit capability required. Thus Amateur Radio clubs could use
flamp to distribute information to those interested in Amateur Radio.
The basic point is that with flamp, we can *use* Amateur Radio to *promote*
Amateur Radio, similar to the way we use nets and HF chats to promote
Amateur Radio to folks who might be listening to learn what Amateur
Radio is all about. And yes, this capability is "legal" --- this sort
of one way information transfer is well within the category of Amateur
Radio "bulletins"`.

[^3]: In saying “flamp” instead of “FLAMP”, I’m using the same lowercase naming as the creator uses in the fldigi documentation. The creator says flamp, not FLAMP, and so I’ll honor that.

>My other question about retrofitting repeaters is, um, well, again about
>frequencies and slots. It seems you are suggesting we could upgrade to
>digital radios from analog ones using existing repeaters without leaving
>behind users with older tech, but how?

Ben Foght N5AMD wrote a great article on the hardware installation
of an MMDVM into a repeater --- [How to make a MMDVM Digital
Repeater](https://n5amd.com/digital-radio-how-tos/make-mmdvm-digital-repeater/).
For the purposes of adding data capability (MMDVM-TNC), the MMDVM
hardware merely has to get updated to add MMDVM-TNC as another mode,
just like you would add another digital voice mode to an MMDVM, such as
M17. Then the repeater passes FM, or digital voice, or MMDVM-TNC data.
MMDVM-TNC is still experimental --- it’s not currently in the main
software distribution for MMDVM, so actual experience with it in the
real world is a work in progress, and this is one of the many projects
I have queued up for my test repeaters in N8GNJ Labs to get some real
experience using MMDVM-TNC and "mixing and matching" FM voice operations
and MMDVM-TNC data so I can advise from actual experience.

>I could see a repeater identifying an input signal as analog FM or
>some digital mode ... but then it surely needs to transmit an FM audio
>signal out. (Admittedly, there's a couple of people with poor signals,
>who, if they could use digital modes with forward error correction,
>would probably come through way better). I assume the digital radios
>don't want to listen to analog FM signals, though. I could imagine a
>repeater using two pairs of frequencies, one for digital radios and one
>for analog, and mirroring messages between them, but that sounds like
>extra expense and gear and getting repeater area authorities to allocate
>additional frequency pairs --- which, which not insurmountable is not an
>easy upgrade.

---

>Speaking of "repeater identifying...", a longstanding, very
>widespread "missed opportunity" in Amateur Radio repeaters is that
>current generation repeater controllers can "ID" and transmit voice
>bulletins with **high quality digitized voice**, either recorded human or
>pleasant sounding artificial (AI) voices. Thus the repeater can, perhaps
>hourly, provide a rotating set of voice bulletins about the repeater’s
>various capabilities, upcoming nets, etc. Personally, after four decades
>now of listening to very low quality artificial voices to ID repeaters,
>any repeater that I have any influence on will not use such crappy
>voice, with the subsequent crappy impression to prospective Amateur
>Radio Operators.

---

At the moment, we don’t have "digital radios", at least for
practical use (reasonable transmit power). Thus what we’re using
is conventional FM radios with data modems (formerly known as TNCs)
attached. What we’re calling "data radios" are conventional FM
radios with a special input, called, variously, "flat audio",
"data jack", "9600 input", etc. that can be used to bypass the
conventional voice pre-emphasis and voice de-emphasis stages of the
radio that make human voice sound good on an FM radio, but distort
higher speed data "audio" that is sent through those stages.

The data modems are endlessly patient, and will happily listen to a
mixed mode (FM voice / MMDVM-TNC data) repeater, and only "spring into
action" when it actually decodes an MMDVM-TNC transmission.

All of this would be much easier explained in an interactive block
diagram, which I intend to do eventually. I have not yet spent time
learning how to instruct an AI like ChatGPT to create such diagrams,
even videos, but that’s on my long to-do list.

There are endless refinements possible for mixed mode repeaters.

For one, consider the possibility of adding a secondary receiver to a
mixed mode repeater. Imagine a 146.76 MHz FM repeater, with its input
frequency at 146.16 MHz. This repeater gets retrofitted with an MMDVM
and a secondary receiver, perhaps even on a different band like 222.01
MHz. When someone transmits FM voice on the primary input frequency, FM
voice is retransmitted like normal. When someone transmits MMDVM-TNC
data on 222.01 MHz, that data is routed into the MMDVM and recognized as
MMDVM-TNC data, and is retransmitted as MMDVM-TNC data.

Another potential refinement for mixed mode operation is that most
current repeaters can be configured to transmit a subaudible tone when
the repeater transmits in FM voice mode, and a FM user radio can be
configured to mute the audio unless that subaudible tone is received. A
digital voice radio will generally automatically switch between FM voice
and digital voice.

## Part 2 Upcoming - First Principles of Mixed Use FM voice / MMDVM-TNC Data Repeaters

In Part 2 that I’ll publish in the next week or two, I’ll discuss
the following ideas ("First Principles") in more detail:

* Amateur Radio capabilities, during normal (non emergency) times is
generally inferior to the capabilities of commercial (and public safety
/ government) Internet / cellular / satellite services. What Amateur
Radio can do better than Internet / cellular / satellite is personal
experimentation and training / learning with radio technology, some
research, and some recreational activities.

* Why do we in Amateur Radio VHF / UHF operating want to use repeaters
at all? Because repeaters allow wide-area communications by limited
power / limited antenna stations over widely varying terrain. In
a phrase, using a repeater "levels the playing field" for all
stations, including portable radios, mobile radios, and base stations.
It’s generally easier, more effective, and provides a more satisfying
experience to use a repeater instead of simplex communication on VHF /
UHF.

* Why do we need data capabilities in Amateur Radio at all, including
repeaters? Again, personal experimentation and training / learning with
radio technology, some research, and some recreational activities. Some
would argue that we need to be able to use data capabilities in Amateur
Radio for communications in emergency conditions that increasingly
require data capability rather than voice. Example, distributing the
occupancy list of a mass casualty shelter when a hurricane has wiped out
terrestrial infrastructure including power and mobile networks. It just
doesn’t work to try to read hundreds of names, accurately, via voice.

* Why not use (single channel, store and forward) digipeaters for data
operations instead of repeaters? Generally, for the same reason we
don’t use single channel store and forward (simplex) voice repeaters -
the experience is poor in comparison to a realtime full duplex repeater.

* Isn’t using a repeater a "single point of failure"? Yes, but
we don’t seem to consider that an issue for voice operations… and
we have a lot of (redundant) repeaters to switch to if one fails. Not
to mention we know how to quickly stand up a temporary or emergency
repeater.

* In the 2020s, increasingly many... *arguably most*, repeaters have
gotten quieter and quieter with less and less usage[^4]. In past decades,
we used repeaters a lot, for example, for autopatch (some repeaters were
built exclusively for autopatch). But now, we don’t use repeaters
nearly as much. Thus these "almost entirely quiet repeaters"
aren’t widely used. Thus does it make sense to continue supporting
repeaters that are barely / rarely / almost never used? Wouldn’t it be
a better use of such a repeater to adapt it for data use with an MMDVM
and add MMDVM-TNC data capability? Ditto for repeaters that are unused
during certain times such as late evening / early morning? Computers and
data communications are "patient" and can wait.

[^4]: Admittedly, formal scheduled nets, scheduled emergency communications exercises, and repeater networking that “creates artificial activity” are some exceptions.

* Why do a disruptive hardware change of installing an MMDVM when a
repeat owner could allow an unmodified repeater to be used with VARA FM
or conventional 1200 bps AFSK packet radio, or perhaps a newer packet
radio mode such as what’s possible with a NinoTNC? That’s a fair
point worth discussion… but generally such operations are disruptive
to normal operations on the repeater --- FM voice users will hear "a lot
of garbage" on the repeater when data modes are in use.

* What’s so special about MMDVM-TNC? Why is it worth considering
converting a repeater to support it? I posit MMDVM-TNC is worth
considering because it is a well-designed, fast data mode that can be
run from an MMDVM, and MMDVMs have already been successfully implemented
by existing repeaters (initially, for digital voice operations).
MMDVM-TNC uses a robust modulation method, uses an advanced Forward
Error Correction (FEC) system (IL2P), and offers different speed tiers,
with a minimum 9600 bps, and potentially as fast as 38400 bps, exceeding
the 25 kbps possible with VARA FM.

* What if we do go through a disruptive upgrade to add an MMDVM and
“something better comes along” and we have to do it all over again?
That’s quite possible, and it’s likely that "something better
will come along" in the next few years. But that "new thing" will
likely be a highly capable software modem that will connect the same
way as the MMDVM, include all the existing MMDVM functions including
MMDVM-TNC, and much more.

* And much more, including some examples of what we can do with a real
Amateur Radio data infrastructure. Hint --- look at what’s already being
done with user-accessible Amateur Radio microwave networks such as
HamWAN and AREDN.
