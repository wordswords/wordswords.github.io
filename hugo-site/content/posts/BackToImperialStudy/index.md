---
date: 2026-10-12T04:09:13+00:00
title: An Unscheduled Interruption to The Plan
url: /BackToImperialStudy
image: /hacking.jpg
author: David Craddock
---

{{< figure
    src="hacking.jpg"
    alt="A picture of a malicious looking hacker in a hoodie with a question mark for a face."
    caption="The really bad thing."
>}}

In around July 2026, a REALLY bad thing happened.

My home network got hacked.

I had to take extensive recovery steps, including securing and changing all passwords, COMPLETELY rebuilding the home server and network, and restoring 18TB of backup archives from Amazon AWS Deep Glacier (which cost me approx £2000).

This took absolutely ages!

I then had to come up with a plan of how to never let this happen again.

I decided I just could not afford Deep Glacier restoral costs again, so I have opted for an on-site dedicated backup server with a 10TB ZFS partition which is encrypted and heavily secured.

While this was happening, an oppertunity came up to move from my existing Virgin Media broadband provider to one that offered 7Gbits/sec upload and download.

Of course I was interested in this, as it finally makes my existing 10Gbits/sec internal network 'worth' the investment.

However most routers cannot handle IP routing at 10Gb/sec speeds. So I had to build a new router.

I used Opnsense on the network appliance I built as a router.

After building it , I measured 6-7Gbits/sec download and 2Gbits/sec upload, which is pretty good for what I'm paying!

While I was fiddling with the network, I also took the opportunity to improve the HomeAssistant setup we were using, and add our new robot vacuum cleaner to the setup. I also took the time to finally get the iParcelBox that I had ordered years ago finally working and reliable enough to be used every day as our default 'delivery address'.

Now we have 2 always-on HomeAssistant dashboards which show security cameras, and all sorts of metrics and controls of IoT devices in our home network.

All this work on the home server and network took FAR longer than expected and was exhausting at times.

BUT - as of today, 12th October 2026, all this work is complete, and I am free to now focus again on my Imperial College ML/AI cert.

I have a bit to catchup, but I am confident that I can go through the whole curriculum and get the cert by January which is the end of the course.


{{< figure
    src="imperial.png"
    alt="A picture of the striking campus of Imperial College London."
    caption="Back to studying here."
>}}

