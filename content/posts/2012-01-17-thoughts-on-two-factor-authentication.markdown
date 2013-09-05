---
layout: post
title: "Thoughts on Two-Factor Authentication"
date: 2012-01-17 03:39
comments: true
author: Michael Chang
categories: mathNEWS Security
---

*I originally wrote this article for Volume 117 of mathNEWS.*

**WARNING:** Two-Factor Authentication isn't for
everybody. Just as it helps keep bad people out of your account(s), it
can be just as easily used to lock yourself out of your own
account(s). You lose access to your account if your phone is stolen or
wiped, your phone's battery dies, if the time on your phone is
inaccurate, or if you accidentally delete your key from your
phone.Make sure you know what you're doing and evaluate the risks and
benefits before you consider enabling Google Authenticator, or any
other form of two-factor authentication.

Today, many of us store lots of data in the cloud. Many of us
archive years' worth of email in GMail, store hundreds (thousands?) on
Facebook, and host our websites on self-managed Virtual Private
Servers. (Okay, maybe not *all* of us do that last one,
but enough of my classmates do that I think it's worth thinking
about.) And it's not uncommon for all of this data to be protected by
mere six to eight character alphanumeric passwords. While most of you
are too smart to use a password that can be found in a dictionary, I
wonder: How many of you use the same password across multiple sites on
the Internet? How many of you store your WatIAM password in plaintext
on your hard drive? Could you bear to lose all those precious emails
to the actions of a malicious stranger? Could you bear to have one of
your peers reject your dream co-op job on your behalf after swiping
your password after "borrowing" your laptop? While Google
Authenticator won't help with your JobMine woes, it can help you
protect your email account from being compromised -- because an
attacker would need both your **password** and your
*phone* in order to access your account remotely.

Google Authenticator is comprised of two parts - software that runs
on your smartphone to generate time-based one-time passwords (TOTPs),
and software on the server side which should be capable of verifying
those one-time passwords. The smartphone software is available for iOS
(3.1.3+), Android (1.5+), and BlackBerry (4.5-6.0) devices. Enabling
Google Authenticator is outside of the scope of this article, but if
you perform a search with your favourite search engine, you'll likely
find instructions on how to use it.

I've spent the past two weeks using Google Authenticator. It hasn't
particularly been a walk in the park, but it's quite functional.

Initially setting up the application-specific password for my phone
to use to sync with GMail took a bit of fiddling. I've had to be
especially careful about making sure my phone's battery never dies
(and making sure I always have my spare battery fully charged).
Pulling my phone out and unlocking it in the middle of what used to be
a five second email check is a bit cumbersome. After a while, though,
the extra password step becomes routine when I'm using Google services
on an untrusted (e.g. work) computer. I've also had to forego my usual
experimenting with new Android ROMs because I need my phone to be
stable if I want to be able to access... well, everything. Little
inconveniences... but that's all security really is, these days.

That said, there's been some pretty nifty stuff too. The other day
I also discovered that LastPass supports Google Authenticator as a
second factor. Granted, it's a bit awkward to use LastPass with Google
services (enter a password and a TOTP to access software that fills in
a username and password so I can be asked for another TOTP... :/) so
I've gone back to using a memorable password for Google, but I've now
started using LastPass handle some of the other passwords in my life.
As well, a few hours ago, I managed to get the Google Authenticator PAM
to work on one of my servers. Granted, dealing with time skew was an
issue (the server takes the time from the Dom0, which isn't
particularly in sync with internet time...) but apart from some hacks
(answering yes an extra time during configuration) to deal with that,
it works rather nicely.

To be honest, though, I'm not sure how much longer I'll keep using
Google Authenticator. On the one hand, once I got past the initial
set-up, things worked really well. On the other hand, I still have to
deal with using the same password to access unofficial student
records, enroll in classes, rank job offers, and check homework
assignments online. Half of the banks I use still demand that online
banking use an alphanumeric password that is exactly six, seven, or
eight characters long. It seems somewhat silly by comparison to
protect years-old email exchanges with two-factor auth when some
supreme entity or other has declared such short alphanumeric passwords
as sufficient for almost everything else in my life.

I do think it'd be absurd to try and force everyone to use
two-factor auth. It depends on what trade-offs each user is willing to
make. As it is, I'm forced to use a "stronger" password to log on to a
computer in a CS lab (which easily happens every day) and a weaker
password to enroll in classes (which happens maybe once a term) and a
weaker password yet to tell my bank to pay my tuition for the term.
Why? It should clearly be the other way around.

Still, for the paranoid among us... Google Authenticator is there.
The source is available... or you can just use it. Or not. The
decision is yours to make.

