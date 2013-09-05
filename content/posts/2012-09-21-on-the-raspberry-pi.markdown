---
layout: post
title: "On the Raspberry Pi"
date: 2012-09-21 08:00
comments: true
categories: mathNEWS life
---

_I originally wrote this article for
[Volume 120, Issue 1](http://mathnews.uwaterloo.ca/wordpress/?p=4048)
of mathNEWS._

This term is the first term that I've brought a computer of my own to campus. It's the $35 Raspberry Pi -- a little-endian ARMv6 computer with 512 MB RAM and various I/O ports. It feels a lot like a smartphone from two or three years ago, minus the cellular radios and on-board flash... and a case.

It is somewhat ironic that the infrastructure and parts I've obtained to make it work cost that more than the computer itself -- a 1080p monitor, a powered USB hub, a USB keyboard and USB mouse, an ethernet cord, a router, an old smartphone charger, and an 8 GB SD card. With the exception of the SD card, though, it'd be nick-nacks that I'd probably have anyway if I owned a traditional desktop computer.

The Raspberry Pi computer runs, in the default OS image, at 700 MHz. In my experience, overclocking the RPi to 900 MHz is pretty trivial (add a line to a file in the root of the FAT partition on the SD card). It doesn't have a huge effect, but every little bit helps.

Considering that ARM is a RISC architecture (as opposed to CISC architectures like x86), you can (to a first approximation) assume that the RPi is roughly as powerful as a 1998-era desktop computer. This means that while it is possible to compile and execute Chromium, Firefox, Inkscape, and other modern-era programs on the device, they run rather slowly. I get around this by using SSH X11 forwarding and running the applications in the linux undergraduate environment. I sometimes find that my ECE courses require proprietary software, though - for this, I use rdesktop (an RDP client) to connect to terminal servers run by Engineering Computing. And the RPi handles other light tasks (running vim; ssh; byobu; elinks) just fine without graphics acceleration.

I've been bitten by the lack of a hardware real-time clock a few times when booting up the RPi detached from the network -- although it's a very quick habit to learn that I just need to set the date from a reliable source (like my cell phone) after booting up the machine.

The only thing that worries me about the RPi is how well it meets its original goals. I'm not confident that I could just hand one to my seven-year-old sister and expect her to know what to do with it. Perhaps I'm doing it wrong. What do you think?

