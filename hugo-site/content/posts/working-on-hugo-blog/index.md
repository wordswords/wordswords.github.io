---
date: "2025-09-13T02:50:13+00:00"
title: Increasing my confidence with Hugo Theming
url: /working-on-hugo-blog/
image: /happyprogrammer.png
author: David Craddock
---


![image](happyprogrammer.png)

- I have been recently spending quite a lot of time working on the [Hugo blog](https://en.wikipedia.org/wiki/Hugo_(software)) framework that I use to build all my web content and serve it up in static format.
- I think I will be moving over to using [Github pages](https://en.wikipedia.org/wiki/Hugo_(software)) to serve my Hugo content for all blogs, because I don't see any advantage to hosting it locally - I have already learned how to do that now, and the very real advantage to hosting on Github.io is that when my home server is down, my blogs are still up and readable.
- To that end, I have been working on [Github actions](https://docs.github.com/en/actions/get-started/understand-github-actions) to automate Hugo building and deployment to Github pages. I now have a good, working, pipeline that I can re-use on all 6 of my Hugo blog domains.
- I have also been adding some scripts locally for easier post authoring, which means it's much easier for me to write content in a standard way and get started with a post without too much faffing about.
- I have finally fixed a problem that had been annoying me for ages - when I post my blog posts to social media, they used to look rubbish - just a static generic blog image showing my face, and no explanation of the content or a post-specific thumbnail. - In order to fix this, I have developed my own 'spinoff' of the Hugo PaperMod theme, called [PaperMod-dpc](https://github.com/wordswords/PaperMod-dpc.git).
- In this customised theme, I have made some improvements and adjustments for my own needs, including an 'intelligent' way of handling the social media [opengraph](https://ogp.me/) data, where it will display much better and interesting preview content on social media.



