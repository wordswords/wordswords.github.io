---
date: 2026-11-08T19:35:20+00:00
title: Nov 2026 Updates to Blogs
url: /UpdatesToBlogs/
image: /
author: David Craddock
---

I have spent some time working on changes to improve the blogging theme and associated infrastructure that I use to maintain my blogs.

With Deepseek + the Pi coding harness, it is easy to get things working exactly how I want them to, with minimal effort.

I have made a number of changes, including separating each blog into 1) the Hugo content 2) the standard PaperMod-dpc theme and 3) PaperMod-dpc-buildscripts which are the common infrastructure and pipeline used to build and setup the blog as well as run check and scans and create new posts easily etc.

I have also created a script that scans through the generated static site looking for broken links, and prepares a report.

I have included some changes to each sites footer, which you should be able to see by scrolling down to the bottom of this page. It includes links for each three commit hashes of the repos that makes up the current page, a link to check the accessibility of the current page, and icons for 'made in VIM' and RSS which will link to the generated RSS feed for the site.

These edits have made things much tighter and nicer and removed duplication across my blog sites, while improving accessibility and SEO quality.

It's still a 'work in progress' and I will keep working on all this stuff when time permits.


