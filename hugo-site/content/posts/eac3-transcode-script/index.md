---
date: 2026-08-21T13:12:13+00:00
url: /eac3-transcode-script
image: /$2
author: David Craddock
title: EAC3 Transcode Script
---

{{< figure
    src="eac3.jpg"
    alt="A simple graphical representation of Dolby EAC3 and Dolby DTS logos and a war symbol between them."
    caption="Dolby Codecs."
>}}


Vibe-coded this script today (amongst other things).

I am using it to go automate the process of going through my collection and create additional audio streams for files which have EAC 5.1 surround sound streams.

Why? Because EAC3 audio is a Dolby propitiatory format and it doesn't play on the Windows 11 Plex player. This means if EAC3 is the only English audio stream format available on the file I've downloaded, I won't be able to play the file on Windows 11 in English.

I DO have a Dolby decoder downstairs attached to my 4K TV on the 5.1 surround sound system, but it can only play Dolby DTS, so I wanted not just to preserve the original EAC3 5.1 surround stream, and offer the new W11 compatiable AAC, but transmux to AC-3 5.1 also so that my surround sound system can play it.

So that's added as well - two new streams, one for W11, one for my older DTS 5.1 surround sound system.

It is written in Bash ('Clean Code'd Bash) with a full test suite of around 100 tests, and runs on most Linux servers that have ffmpeg installed.

[https://github.com/wordswords/eac3-transcode-script.git](https://github.com/wordswords/eac3-transcode-script.git)

