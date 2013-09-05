---
title: "The More Things Change, the More They Stay the Same"
created_at: 2013-09-03 09:35:00 -0400
kind: article
---

In 2008, Jeff Atwood wrote that [software developers are like magpies][magpie].
We have a tendency to reinvent the wheel.  After a while, a developer will
notice that all the "shiny" and "new" things seem remarkably similar to things
she has seen before. Eventually, she stops caring.

In elementary school, I built sites one page at a time. I started with
graphical tools provided by Homestead Technologies, before moving on to
FrontPage, and then finally using text-based editors like Notepad++ and
Bluefish. Along the way, I discovered IIS, Apache, and Server Side Includes.
Before long, I was writing Perl scripts, which I presented to the world through
a free hosting account and the ubiquitous cgi-bin.

In high school, I switched to using the PHP-based WordPress to host my site,
learning a great deal about .htaccess files and MySQL databases. While I still
set up WordPress sites for friends, I moved my own site off of it in 2012 --
half way through my undergraduate degree.

The very aspect of WordPress that makes WordPress useful for my friends is its
popularity, which means that you can do a Google search and get the answer to
just about any question you have about using WordPress. But its popularity was
also the aspect that made it a poor choice for me -- I only update my site once
every few months, and its popularity makes it a prime target for attackers
looking for remote code execution vulnerabilities. Seeing one too many
vandalized WordPress sites was enough for me.

I replaced WordPress with a git repository and Octopress. Octopress is based on
Jekyll, a "static site generator" used by GitHub Pages. This meant I could run
the code once on my laptop, and have the web server just server a bunch of
static files and folders. Since there would not be any dynamic code (i.e. PHP,
Ruby, whatever) running on the server, it was less likely that I would get
"pwned".

Of course, serving HTML files from a folder is not unlike what I was doing in
the 90s with hand-written HTML and Server-Side Includes. But other things had
changed in the intervening decade. You can no longer write your own Guestbook
script in Perl and expect people to play nice; there are so many bots
submitting comment spam now that you need to have some sort of Machine Learning
machinery to deal with it all. For WordPress sites, you have to subscribe to
Akismet, or your blog will be inundated with comment spam. On the other hand,
JavaScript is more ubiquitous than ever, and programmers have developed
increasingly complex layers of abstraction (such as CoffeeScript, or the Google
Closure Compiler) to paper over the rough edges underneath. So where once it
was customary to host comments on your own server, now you can just pop in a
snippet from Disqus or Facebook at the bottom of each post.

Some time last year, one of my classmates mentioned that Octopress had not seen
new commits in months, and declared it "abandoned". I did not see that as a
problem, since people only saw the static output. Then, Twitter changed its
API, and one of the plugins in the base template broke. (Oops.) The same
classmate recommended [nanoc][nanoc].

So here I am, in 2013, being a magpie. And this iteration of my blog was
generated with nanoc.

Of course, if you see any brokenness, in my old posts or otherwise, feel free
to leave a comment below.

[magpie]: http://www.codinghorror.com/blog/2008/01/the-magpie-developer.html
[nanoc]: http://nanoc.ws/

