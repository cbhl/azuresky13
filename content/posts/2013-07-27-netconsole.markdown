---
layout: post
title: "netconsole"
date: 2013-07-27 15:29
comments: true
categories: 
published: false
---

[0] https://www.kernel.org/doc/Documentation/networking/netconsole.txt

[1] https://wiki.ubuntu.com/Kernel/Netconsole 

- Don't use IPv6. (I guess 3.8.x kernels not new enough?)

/etc/syslog-ng/conf.d/99-netconsole.conf:

    source net { udp7(ip("0.0.0.0") port(6666)); };
    destination netconsole { file("/var/log/netconsole/$HOST-netconsole.log"); };
    log { source(net); destination(netconsole); };

- boot flags:

    debug ignore_loglevel

/etc/modules:

    netconsole

/etc/modprobe.d/netconsole.conf:

options netconsole netconsole=6666@192.168.2.202/eth0,6666@192.168.2.166/00:26:2d:b0:41:a1

    options netconsole netconsole=@/,6666@192.168.2.166/00:26:2d:b0:41:a1

