---
author: cbhl
created_at: 2010-10-09 18:58:17 -0400
kind: article
slug: upgrading-from-ubuntu-10-04-to-10-10-on-xen-watch-out-on-reboot
status: publish
title: Upgrading from Ubuntu 10.04 to 10.10 on Xen? Watch out on reboot!
wordpress_id: '561'
---

If you were running Ubuntu 10.04 or or lower on Xen, you may be
accustomed to passing root=/dev/xvda1 or similar so that the kernel
would find the Xen block device and use it as the root partition. New
kernels in Ubuntu 10.10 "Maverick Meerkat" now give Xen block devices
the same device names as other mass storage -- e.g. /dev/sda -- so you
may need to update the configuration in PVGRUB or your other bootloader
of choice. PVGRUB / GRUB Legacy (0.97): 
<pre><code class="language-bash">
$ sudo vim /boot/grub/menu.lst
</code></pre>
 
<pre><code class="language-text">
### BEGIN AUTOMAGIC KERNELS LIST
# <snip\>
## default kernel options
# <snip\>
# kopt=root=/dev/sda1 ro
## optional compat. option for lucid kernel in case of regressions
## (you may need to adjust this for your running kernel)
# kopt_2_6_32=root=/dev/xvda1 ro 
</code></pre>
 
<pre><code class="language-bash">
$ sudo update-grub
</code></pre>

