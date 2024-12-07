+++
date = "2024-12-11T02:11:22-06:00"
title = "Explaining the Use Case for Data Over Repeater - Part 2"
categories = [ "Technical" ]
tags = [ "Zero Retries", "Crosspost" ]
aliases = [ "/post/2024/11/23/explaing-the-use-case-for-data-over-repeater-part-1/" ]
xpostLink = "https://www.zeroretries.org/p/zero-retries-0181?open=false#%C2%A7explaining-the-use-case-for-data-over-repeater-part"
xpostName = "Zero Retries 0181"
xpostComment = "See the original article page for reader comments."
+++
Continuation of a series begun in **Zero Retries 0179** - [Explaining the Use
Case for Data Over Repeater - Part
1](https://www.zeroretries.org/i/151787628/explaining-the-use-case-for-data-over-repeater-part).
<!--more-->

## Begin With The End In Mind

One of the primary tenets in the great book 7 Habits of Highly Effective
People that has really stuck with me in the decades since I first read
it is:

:link: [Begin with the End In Mind](https://www.franklincovey.com/the-7-habits/habit-2/)

I’ve found that simple advice often helps me when I’m stuck in
"process" --- *how do you want this situation to end up*? Once you can
imagine what you want to see at the end of the "process", next
steps and an overall plan sometimes become clear (but not always), but
at least you have an idea of what to tackle next in the process of
getting to "The End".

Thus, what follows is my current thinking of "The End In Mind" with
regard to a potential long term project of advocating that Amateur
Repeaters be reimagined for data communications, either as dual use with
voice, or repurposed to be primarily for data use.

## The Current Generation is "Data First"

One of the "barriers to entry" for getting Amateur Radio operators
of the current generation on the air and active within Amateur Radio
is that they prefer data communications ... text[^6] ... to voice
communications for their casual communications.

Just as modern society has migrated to data / text communications
for much of its typical communications---text messages, sharing
photos, email, social media (both text and short video)---Amateur
Radio has begun to migrate its communications (and experimentation)
to data / text. Witness the widespread use of data modes such
as WSPR, PSK31, FT8, VARA, FSQ, and APRS, and even EME using
JT65. We continue to invent new data modes, most recently
[LongChat](https://www.youtube.com/watch?v=ixmKc-gDQT0) (link is to
YouTube demo).

But using data communications on VHF / UHF isn’t very convenient and
somewhat expensive because to operate simplex on VHF / UHF requires a
station to use powerful radios, external antennas, a reasonably high /
clear location, etc. Or, data operations on VHF / UHF are limited to
"data light" APRS operation via APRS digipeaters.

## Digipeaters Work... Kind Of...

This topic is worthy of a longer discussion, and perhaps a
re-examination in this era.

*What follows is my perceptions of digipeaters, my memory, my technical
knowledge. What I will state in this section is my best understanding of the
state of digipeaters, without resorting a thoroughly researched, very long
"deep dive".*

Digipeaters are a *reasonable* technology for creating ad-hoc networks
for short data bursts such as APRS transmissions of weather data, text
messages, position data, etc. However, digipeaters don’t necessarily
work well for wide area use, or larger numbers of users, or longer
data transfers. In a word, digipeaters were developed as a hack in
the early days of packet radio by using a bit of memory in a TNC for
receive-buffer-retransmit operations. In short, digipeaters enabled
*some* networking in early packet radio. The utility of, and the
shortcomings of digipeaters were somewhat overcome by a number of
improved types of digipeaters, including Net/ROM / TheNet, TexNet, ROSE,
and others I’ve now forgotten[^7]. APRS added some optimizations to
digipeating such as "digipeat only when it’s a good idea to do so"
such as home stations, rarely, and mobile stations, only when moving.

But digipeater operation falls down in a number of ways:

* Digipeaters are generally very simple devices, with limited
buffer memory, and thus can accommodate only small amounts of data
and short packets. Larger amounts of data or longer packets cause
“fragmentation” through the repeater, and reduce throughput.

* If the number of users of a digipeater rises above a certain threshold
where too may transmissions exceed the digipeater’s (channel)
capacity,

* The [Hidden Transmitter (or Node) Problem](https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=https://en.wikipedia.org/wiki/Hidden_node_problem%23:~:text%3DIn%2520wireless%2520networking%252C%2520the%2520hidden,are%2520communicating%2520with%2520that%2520AP.)
where some digipeater users cannot receive each other directly, but
the digipeater can hear all users equally well, and thus there are
"collisions" when attempting to use the digipeater simultaneously.
This cascades into the digipeater and users "backing off", severely
reducing the overall throughput of the channel.

* And, generally, digipeaters are “fossilized” in using 1200 bps
Audio Frequency Shift Keying (AFSK).

## In Contrast to Digipeaters, Repeaters Work Well

Repeaters changed the paradigm of VHF / UHF usage in Amateur Radio,
making it easy and effective (and relatively inexpensive) to operate on
VHF / UHF and communicate between groups of Amateur Radio Operators in a
local area or region.

Repeaters are located in high locations such as skyscrapers, towers, or
mountaintops, allowing modest user stations to reliably communicate with
each other via the repeater.

An additional advantage of repeater’s high locations is that they
allow reliable communications over a wide area.

Repeaters operate in a simultaneous receive / transmit mode[^8] full
duplex by using separate receive and transmit frequencies. When two
stations are in communication with each other via the repeater, every
user of that repeater knows that the repeater is in use, and thus
"collisions" (such as result from Hidden Transmitter / Node Problem)
are minimized.

A subtle "feature" of repeaters is that they can act as a "water hole" -
a central gathering spot... kind of like a continuous club meeting for a
particular group of users. (From other articles in this issue, the water
hole effect is especially prominent with Amateur Radio video repeaters.)

Lastly, using a repeater de facto enforces minimal / compatible
technical standards of all users, such as requiring a reasonable signal
for using the repeater (such as high transmit power or better antennas
for users that are farther from the repeater), or use of a particular
digital voice technology, or any number of other technical standards.

But... Amateur Radio VHF / UHF repeaters are built for, and used for, almost
exclusively voice operations. Yes, there are some data capabilities
incorporated into some digital voice systems used in Amateur Radio --- see Zero
Retries 0179 --- ["Data capability" on D-Star, System Fusion, DMR, and
P25](https://www.zeroretries.org/i/151787628/data-capability-on-d-star-system-fusion-dmr-and-p)
as explanation of why those systems aren’t very relevant in this era.

## The Era of Quiet Repeaters

Simultaneously with the "rise of data communications", a trend is
emerging that Amateur Radio VHF / UHF repeaters are becoming "quiet".
Repeater activity is declining, which becomes a vicious cycle. If a
repeater is quiet, there’s less incentive and interest to monitor that
repeater for interesting conversations, and the repeater grows even
quieter.

## Competitive Pressures for Amateur Radio Spectrum

There is also the trend of increasing "competitive pressure" for the VHF / UHF
spectrum that Amateur Radio has been allocated, and has been allowed to
operate on a shared basis. In this era of almost entirely wireless
communications --- mobile device networks, Wi-Fi, satellite communications such
as Starlink, the competitive pressure is increasing. **This is not fear
mongering.** Current examples:

* The Amateur Radio allocation in 3.3 -- 3.5 GHz [has been
eliminated](https://www.arrl.org/3-ghz-band). This was significant
because several wide area Amateur Radio microwave networks were built to
use this band and thus able operate without interference from unlicensed
systems in the 5 GHz band.

* While there are still some segments of the 5 GHz band where Amateur
Radio can operate exclusively, the Amateur Radio allocation has been
reduced in favor of allocating almost all of the 5 GHz band(s) to
unlicensed operation.

* If [FCC Docket 24-240 is adopted as
proposed](https://www.zeroretries.org/p/zero-retries-0165?open=false#%C2%A7arrl-and-meshtastic-publicize-the-fight-to-save-mhz), Amateur Radio
may lose the effective use of 902-928 MHz because of competitive
pressure to reconfigure that band to move Amateur Radio operations,
along with all unlicensed operations, into 907-918 MHz.

* Amateur Radio use of the 1240 -- 1300 MHz band will inevitably be
reduced in the next few years. The primary use for this band, worldwide,
is for Global Navigation Satellite System (GNSS) other than the US
Global Positioning System (GPS). These new GNSS systems such as Galileo
(Europe), GLONASS (Russia), BeiDou (China) are now coming online
and using this band and do not want interference from Amateur Radio
operations.

Thus there is an increasing imperative to use our Amateur Radio VHF /
UHF bands, and demonstrate actual usage, rather than allocating them
within Amateur Radio as "allocated" such as repeaters coordinated
and built… but provably not widely used when surveys are conducted.

## Putting It All Together --- The End In Mind

Thus, I posit, that all of the above trends combine to create a multiple
"win" situation that quiet repeaters can be repurposed for shared data /
voice operation, or in some cases data mostly operation. Doing so makes
it easier for new Amateur Radio Operators to become active on Amateur
Radio data modes in the same way that repeaters make it easier to use
VHF / UHF for voice operations, and the repeaters become more widely
used, and our Amateur Radio VHF / UHF bands are provably actually being
widely used.

## A Personal Perspective of Data Over Repeaters

*I intend this section not as a "stroll down memory lane", but
instructive background from real world experience.*

When I moved to the Seattle area in 1987, I discovered a very active
Packet Radio group called the Northwest Packet Radio Association
(NAPRA). NAPRA was very active in packet radio --- constructing
digipeaters and later simplex nodes with links using Net/ROM networking,
and user education about getting active in Amateur Radio Packet Radio.
Bulletin Boards were commonly used. Years later, some of us in NAPRA
became tired of the “petty fiefdoms” of the node owners and BBS
sysops. There were endless months of debate about the optimum parameters
in the Net/ROM network and the BBS sysops often killed (censored) email
from folks they didn’t like, and killed bulletins they didn’t agree
with.

Sometime in the early 1990s, when it had been ported to
MS-DOS, some of our most technical members discovered [KA9Q
NOS](http://www.ka9q.net/code/ka9qnos/) and began talking it up amongst
ourselves. We first experimented with it over simplex links... and
found that TCP/IP over Amateur Radio was fun and very interesting and
more capable than "plain" AX.25 packet radio (and nodes, and BBS’s).
For one thing, we could communicate directly between ourselves using
*email*, not messages on a BBS..... with a BBS sysop in the middle of
our communications. We gradually grew the TCP/IP network with some
folks running multiple ports (radios on different bands) and getting
more and more capable until eventually we developed the network
described in an article I wrote for the 1995 ARRL and TAPR Digital
Communications Conference ---
[The Puget Sound Amateur Radio TCP/IP Network](https://www.superpacket.org/2021/03/the-puget-sound-amateur-radio-tcpip-network-circa-1995.html)
(PSARTN). I use the PSARTN terminology in explaining it to a wide
audience, but the actual name of the network and group, chosen by the
users was WETNET --- Washington Experimenters TCP/IP NETwork.

All of the basics of what I’ll explain in this section are in that
article, and I’m glad I wrote it because it’s one of the few
surviving bits of documentation of that network --- that and one of the
440 MHz repeaters gathering dust in my shop. We were so busy doing and
experimenting that we just didn’t write things down except in email
lists of the era... and the server of that list is long defunct and few
folks’ email archives survived the deaths of the limited life storage
mediums of the DOS / very early Linux era. So this description will be
partially out of memory, and much out of emotion and remembrance of the
excitement of that era.

The PSARTN was groundbreaking in its day for combining five significant
advances in packet radio in its day:

* At its peak, PSARTN consisted of three 440 MHz repeaters, one 144 MHz
repeater, and one 222 MHz repeater, and some simplex channels. There
were a few other repeaters that were attempted.

* The 440 and 144 MHz repeaters operated at 9600 bps using a TAPR big
regenerative option on the TAPR 9600 bps modems (on a modified TAPR
TNC-2 clone).

* The PSARTN used TCP/IP over AX.25. Our subnet in 44Net was 44.24.x.x.

* The repeaters and simplex channels were all networked via routers;
initially KA9Q NOS, then JNOS, then Linux on PCs located at the
repeaters.

* There was an Internet gateway and we selectively gated messages from
usenet and email into and out of PSARTN.

Most of us... the more dedicated, technical folks, operated on the 9600
repeaters using JNOS, and there were a few bleeding edge folks that ran
very early versions of Linux. TCP/IP worked well due to the adaptations
for slower speed links that KA9Q put into his NOS code.

Admittedly, some of the excitement of the PSARTN was that it was
"our own little Internet". We were all able to learn about Internet
technology and TCP/IP on our home stations --- learning the basics of
addressing, routing, and the many, many ways you can misconfigure a
router, including creating many, many packet storms (why is my radio
transmitting continuously?). Mostly we used fixed IP addresses and
static routing, but we experimented with dynamic routing and Dynamic
Host Configuration Protocol (DHCP).

Generally, PSARTN worked well. The main issues we had were getting new
users up to speed on using and configuring their systems for TCP/IP,
tweaking their 9600 systems for correct deviation, and the vagaries of
the portion of AX.25 that was the Network Layer and Transport Layer. We
also had to contend with slow computers (PCs operating at the original
PC’s clock speed of 4.77 MHz were commonly in use), setting up KISS in
TNCs, bugs in TNCs, and the serial link between the PC and the TNC (had
to be faster than 9600 to keep up --- upgrading to RS-232 serial cards
with 16550 UARTs fixed that issue.

When we were using simplex links with more than two users, it was only
partially successful because we had varying modems, radios, transmit
delays, hidden transmitters, differing deviation settings, etc. Thus
one of the biggest successes of the repeaters operating at 9600 bps bit
regeneration is that you could simply start a ping session with another
user on the repeater, and just keep adjusting your parameters of your
radio or your system. For example, deviation was easy --- just adjust
for best ping success. If every ping was coming back, your radio was
de facto set well enough. And because everyone was working through the
same system (the repeater), if you could work one person, you could work
everyone who was a user of that repeater.

The three 440 MHz repeaters were regional --- one in North Seattle,
one on the far East side of the Seattle suburbs, and one far South
of Seattle. The 144 MHz repeater was a wide area repeater. With the
dispersed coverage of the repeaters, the users generally didn’t
have try to get into a distant repeater. The 440 repeaters were all
connected over a wireline backbone (but some folks had radios on
multiple repeaters and could do failover routing).

Once you got your system configured... it just worked. We were able to
run email between ourselves, and do multi-user emails (bulletins), and
we even had list servers, and the aforementioned Internet gateway. We
did all the usual Internet activities of the era --- file transfers,
pings, email, finger, etc.

Really... **it... just... worked.** We didn’t need any services on the
Internet --- PSARTN was an Intranet. The Internet connectivity was a
convenience, not a necessity.

One of the wildest experiments that we did was a weekend FTP session of
some big (for our network) file that was going to take hours. By then
our TCP/IP knowledge had advanced to having a sliding window protocol
--- as long as a transmission got an ack, the sending station would try
sending longer and longer packets. For this experiment, two stations
were able to access one of the 440 repeaters and the 144 MHz repeaters.
They configured the transmitting station to use one repeater, and the
receiving station to send the acks via the other repeater. It worked
spectacularly well and the sending station transmitted the file. The
sending station’s repeater got a bit warm, but it was built for
continuous duty.

I’m one of the few folks now that remember the PSARTN, and care about
it, and the example that it set for how useful repeaters can be for
providing a quality experience of data communications over Amateur Radio
to new Amateur Radio users who are interested in digital communications.
Connecting to PSARTN repeaters was... challenging... and expensive
initially. I got connected initially with a 2 watt crystal controlled
radio into an expensive run of low loss coax cable into an 11 element
beam. Then our group discovered an easy modification for 9600 on surplus
GE MVP UHF and VHF radios and then connections into the repeaters were
easy.

But the key point --- the repeaters worked to connect us all with high
speed data communications over Amateur Radio VHF and UHF channels and
thus users could have a modest station that worked well.

Operating TCP/IP on the PSARTN was an incredibly satisfying experience,
and once enough of us had enough experience in all the gotchas, getting
new users onboard was pretty easy because all they had to do was to pick
a repeater, get their equipment built up (we gave lots of advice), and
get it configured (we had documentation).

One of the primary successes of data communications using repeaters such
as the PSARTN was there were very few collisions of two stations trying
to use the repeater simultaneously. Every station using a repeater knew,
within a few hundred milliseconds, when a repeater was in use and to not
transmit so they wouldn’t cause interference. Operating at 9600 bps
meant that most transmissions were only a few seconds, thus there was
lots of channel capacity on a repeater to accommodate many users.

As for the plaint that repeaters are a single point of failure and
encourage a "user mentality", there is the same issue with voice
repeaters (which are, or were, widely used), which is generally answered
by redundancy --- being able to access other repeaters.

Having experienced the Puget Sound Amateur Radio TCP/IP Network, with
the technologies of that era... I continue to be gobsmacked by how much
better those directly relevant technologies are now:

* We have full power, frequency agile, 144 / 440 MHz *radios* with
flat audio connections (no modifications required) such as the Yaesu
FTM-6000R that can easily do 9600 bps (and potentially faster).

* We have high quality audio interfaces such as the Masters
Communications DRA50M which connect directly to the most common flat
audio connection on radios (the “data / 9600” port using a 6-pin
MiniDIN connector).

* We have very fast, very cheap dedicated computers such as the
Raspberry Pi series that can be dedicated to Amateur Radio activities.

* We have excellent software modem implementations such as DIRE WOLF
that can do things that hardware TNCs of the PSARTN era could never do,
such as single bit error correction using bit-flipping.

* We have well-understood implementations of TCP/IP in Linux and many
applications.

* We have several implementations of Forward Error Correction, which
makes a huge difference in overall reliability of data communications.

Thus I think the time is right to try data communications over Amateur Radio repeaters, and see if we can "recreate the magic" of we users of the PSARTN experienced.

*I’m grateful to friends Ren Roderick KJ7B and Michael Sterba KG7HQ who
reviewed and commented on a very early draft of the section about the
PSARTN.*

[^6]: In this discussion, I’m not distinguishing between text messaging and data communications (transfer of arbitrary data types --- email, files, voice, images, etc. If an infrastructure is built for "data", it can easily handle text messaging, thus I think that’s the preferred goal, rather than networks that are built for text messaging. 

[^7]: Such past approaches, that were attempted, but didn’t necessarily work out / catch on / were too expensive, required custom expensive hardware, etc. is one of the primary reasons why I continue to advocate for the [Digital Library of Amateur Radio & Communications --- DLARC](https://archive.org/details/dlarc). A long term project I hope to attempt in 2025 is a study of the various approaches to packet radio networking, and why they failed (or just faded out) and what their relative advantages / approaches were. In the 2020s we have far better technologies from when those systems were attempted, and perhaps we can bring together a unique new, powerful method of data networking in Amateur Radio that takes full advantage of our spectrum, software defined radio, cheap processors, etc. That’s only possible to do in this era because all of the relevant publications about those systems can now be accessed within DLARC.

[^8]: Many refer to this as "Full Duplex" though I consider that an incorrect characterization given the way a repeater can only relay one transmission at a time. True full duplex (such as telephone usage) means that both parties in communication can transmit and receive simultaneously.
