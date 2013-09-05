---
layout: post
title: "zsync: client-side rsync over HTTP"
date: 2012-01-27 05:03
comments: true
author: Michael Chang
categories: mathNEWS
---

 _I originally wrote this article for Volume 118, Issue 2 of mathNEWS._
 
I wonder when 4 GB+ virtual machine images became the norm in CS classes at this institution, but it's clear that the network infrastructure outside of campus is clearly not ready to handle dozens of students downloading such large files all at once.

zsync is a tool that uses the rsync algorithm to download a file from a server, but with pre-computed metadata to help the algorithm scale well (and run over regular web servers). This allows users to resume incomplete downloads and verify your file is complete in one step. Packages may be available for your Linux distribution of choice. As of the time of writing, it's available on homebrew (Mac) and Cygwin (Windows) as well. Sources can also be downloaded from [http://zsync.moria.org.uk/downloads](http://zsync.moria.org.uk/downloads).

I first ran into zsync when I was downloading a Ubuntu release, and I've started using it over jigdo.

For TAs and support staff, making content available by zsync is straightforward. Simply run:

<code>zsyncmake -C -e -u <em>&lt;url&gt;</em> <em>&lt;file&gt;</em></code>

For example, for the CS 136 VM, one could run:

<code>zsyncmake -C -e -u http://www.student.cs.uwaterloo.ca/~cs136/VirtualMachine/CS136.ova ~cs136/public_html/VirtualMachine/CS136.ova</code>

This creates a <em>&lt;file&gt;.zsync</em> file containing metadata and checksums which the zsync client can use. Simply make this file available in public_html (perhaps in the same folder as the Open Virtualization Archive (OVA) itself).

For students, once zsync is installed, downloading a file is as simple as

<code>zsync <em>&lt;url&gt;</em></code>

Where <em>&lt;url&gt;</em> is the URL of the .zsync metadata file. The man page contains details on other flags, which may be useful if you are resuming an incomplete download or trying to sync from a file with a different name and similar contents (e.g. a previous version of a virtual machine).
