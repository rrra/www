+++
date = "2025-05-12T01:11:45-05:00"
title = "Open Source in Amateur Radio"
categories = [ "Technical" ]
tags = [ "Crosspost" ]
xpostLink = "https://jbo.io/oss-ham-radio.html"
xpostName = "Justin Overfelt's Blog"
xpostComment = "This work is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/)"
+++
When I first got my Technician license in 2019, I heard people call
amateur radio "the hobby of experimentation". I was told I had
received a "license to learn". Indeed, 47 CFR Part 97, the section
of the Code of Federal Regulations that governs amateur radio in the
United States says this in Subpart A under *Basis And Purpose*:
<!--more-->

> The rules and regulations in this part are designed to provide an
> amateur radio service having a fundamental purpose as expressed in the
> following principles:
>
> ...
>
> Continuation and extension of the amateur’s proven ability to
> contribute to the advancement of the radio art.
>
> Encouragement and improvement of the amateur service through rules
> which provide for advancing skills in both the communication and
> technical phases of the art. [^1]

[^1]: "Title 47 Chapter I Subchapter D Part 97 Subpart A &sect; 97.1". eCFR, accessed May 11 2025, https://www.ecfr.gov/current/title-47/chapter-I/subchapter-D/part-97/subpart-A/section-97.1.

I have found a great many fellow hams that live these principles in
one way or another. One thing I was surprised to find though is that,
as a community, we don’t uphold them when it comes to software. The
vast majority of the software ever written for the amateur community is
proprietary and Windows-only. Worse, it is Windows desktop only, with
little to no consideration given to mobile or remote operation.

### Yeah, but most computers run Windows

This was once true, and probably is still true if all you’re counting
are desktops and laptops. However, smartphones are by far the most
popular computing devices these days, and none currently on sale run
Windows. In fact, today we enjoy a huge diversity of computing devices
and processor architectures. You can run Linux on a RISC-V processor,
Windows on an ARM processor, NetBSD on x64, and on and on. This is a
very different state of affairs than the Windows-on-Intel-processors
status quo that existed when amateur radio software gained popularity.
The Raspberry Pi brought low cost ARM devices that ran Linux to the
masses, and the Pis and their clones are still hugely popular among
hams. In fact, many of the new entrants to the hobby come from the tech
world now (I’m one of them!). They might want to run higher power in
the 2.4GHz band, or maybe they played with Meshtastic and are looking
for more. These people expect a thriving open source culture from the
hobby of experimentation.

Perhaps you don’t come from this culture, and are wondering what all
the fuss is about.

### Why Open Source?

Many reasons are detailed elsewhere, ask your favorite LLM! I’ll focus
on the reasons that are specific to amateur radio.

### Be an experimenter

Open Source, and specifically Free Software, [preserves your freedom]. In
amateur radio, it also preserves your ability to experiment. You can’t
experiment and learn from closed source software. It turns you into the
dreaded appliance operator. You can’t mold your setup the way you want
it. You can’t support any configuration the software author hasn’t
previously thought of.

### Your favorite software, SK

It may be morbid, but it has to be said: many, many programs become
a "silent key" with their creators. No one had the source, so
there was no way to continue fixing bugs and adding features after the
death of the original author. This is also a liability for emergency
communications and I’m shocked that (for example) Vara has made
inroads there. As far as I can tell, it’s all dependent on one guy.

Even if the author has the forethought to make a plan for releasing the
code after they burn out or shuffle off this mortal coil, no one else
is experienced in developing it and there’s no incentive to make it
easy for others to build. Likewise, there’s no reason for the author
to produce developer-focused documentation. Having the code itself is
only a small part of the equation.

You might think this issue is mitigated if the software is offered by
a company. Not so. Companies are bought out or fail all the time. A
great many companies offered packet radio software in the 90s and 2000s.
Almost none of them are around today.

### An aside about hardware

Although the move to software modems has been a good thing overall for
amateur radio, old-style hardware modems ("TNCs") did have one
advantage: cross platform support was "free" since they tended to
operate over serial connections that worked on all operating systems.
That was just about their only advantage though, as they were bulky and
expensive. They were also full of proprietary firmware. As an example,
although SCS Pactor modems are every bit as proprietary as Vara, they
are simple to use with any operating system and architecture.

### Success Stories

There is hope however. Some of the most popular packages in amateur
radio today are open source:

* WSJT-X
* Fldigi
* Pat
* ARDOP
* Direwolf

You can take a look at the source of any of these programs and learn
something. If something doesn’t work the way you want it, you change
change it! If you don’t know how to develop software, it’s quite
likely someone else has had the same idea already. They can redistribute
their own version or contribute back to the original.

The [ARDC] is doing great work in this area, funding important pursuits
like [Mercury], a high-performance software modem.

### Closing Thoughts

There’s nothing illegal about using proprietary software on the air
in the USA, provided protocols are "documented". It should be noted
that what qualifies as "documented" has never been precisely defined
by either the FCC or case law.

This blog post is not an invitation to zealotry: sometimes practicality
must trump idealism, and this is why I own a (secondhand) Pactor modem
and am a paid Vara subscriber. I make it a point, however, to use Open
Source Software whenever possible.

This is an invitation to support Open Source and Free Software by using
it over alternatives, contributing when you can, and choosing open
source when you write new software.

[Basis And Purpose]: https://www.ecfr.gov/current/title-47/chapter-I/subchapter-D/part-97/subpart-A/section-97.1
[preserves your freedom]: https://www.gnu.org/philosophy/free-sw.html
[ARDC]: https://www.ardc.net/
[Mercury]: https://github.com/Rhizomatica/mercury
