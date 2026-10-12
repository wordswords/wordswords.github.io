---
date: "2023-12-17T02:13:39+00:00"
guid: https://davidcraddock.net/?page_id=4287
title: My Homelab / Home Network Setup
url: /my-home-network/
---

{{< figure
    src="networkcabinetopen.jpg"
    alt="Picture of my home network cabinet, with the front windowed door open."
    caption="My home network cabinet."
>}}

It is my opinion that every security professional 'worth their salt' should have a homelab.

Therefore, I have built a 10Gb/second network in my home in a network cabinet. It has taught me a lot of networking, IT and cyber security skills. A network diagram can be provided under certain circumstances, e.g. job interviews.

Here are the details:

### Security and Design goals:

* Minimise exfiltration of personal data assets to big tech companies to train their own AI systems at my expense - try and make sure no sensitive data leaves the network.
* No unpatched devices allowed on network, enforced by automated patching.
* Software-defined VPN remote access to the network only.
* Anonymising VPN connections to exit nodes in other countries for private traffic.
* Automated weekly security updates using bash scripting to upgrade all Mikrotik devices, Opnsense, Debian server and all Windows 11 PCs (via remote SSH access and Powershell scripts).
* Automated weekly backups of all crucial files (both system and data) on all devices, including Mikrotik, Windows PC, Debian server, Opnsense box.
* Advertising, analytics, malware and tracker blocking on the DNS level for all the network.
* Hardened Mikrotik, PC, mobile devices, and Linux server configurations, with minimal ports listening, and firewalls correctly enabled.
* Hardened Windows 11 setup, with in-built AI features removed with W11Debloat, and web caches automatically regularly shredded using Bleechbit.
* Use of JetKVM IP remote control devices mean that all critical servers can be reinstalled remotely from the BIOS level.

### Hardware:

* I have a Protecli custom network interface running Opnsense which routes at 10Gb/sec - enough speed for my 7gbits/sec internet connection - Protecli - VP2440 - 2x 10GbE, 2x 2.5G Port Intel® N150 - Kingston DDR5-5600 SO-DIMM Memory Module - 32GB - 1TB Kingston NVMe NV3-1000G - [https://kb.protectli.com/kb/vp2440-hardware-overview/](https://kb.protectli.com/kb/vp2440-hardware-overview/)
* I use two Mikrotik devices for switching at 10Gb/sec level for fibre DAC and 1Gb/sec for legacy ethernet.
* I have two ZigBee to IP adaptors which allows me to interface the HomeAssistant setup with low cost ZigBee buttons etc.
* A 6 bay 48TB NAS Linux server that runs Debian, and hosts around 20 services, mostly using docker compose - TERRAMASTER F6-424 Max NAS Storage - 6Bay Core i5 1235U 10-Cores 12-Threads, 32GB DDR5 RAM Dual 10Gb/sec CAT UTP ethernet
* A couple of Windows 11 PCs which we use day-to-day.
* E-readers and tablets linked to my calibre libraries.
* Reolink security cameras linked to HomeAssistant with zero traffic being sent external to the network.
* Gaming PC with >10TB of retro games stored remotely on the Linux server, and accessible on the gaming PC.
* Mobile phone running GrapheneOS.
* Many IoT and smart home devices.
* 4K HDR 43" Sony TV with 5.1 Dolby Surround Sound system, able to stream films/TV from the Plex server.
* 2x JetKVM IP devices attached to the key servers.
* A secured dedicated backup server running 24/7 with a ZFS partition that constantly mirrors the borg backup repos from the main server.

{{< figure
    src="wifi7.png"
    alt="Picture of a result of an internet speed test, showing speeds of 600mbits/sec download on my Wifi 7 connection."
    caption="My gaming PC's Wifi 7 speedtest."
>}}


### Network services run:


* A home intranet page that is accessible externally via the internet, although it is secured.
* HomeAssistant that controls smart home IoT devices, with a IP to ZigBee adaptor. We have two 'always-on' HomeAssistant dashboards running on computer monitors - one in the living room, and one in my office.
* Two instances of Calibre-Web-Automated, one for my EPUBs ebooks library, and one for my PDFs ebooks and comics library. Both are accessible over the internet, although secured.
* Plex Media Server (accessible remotely), Tautalini and Kometa services.
* Full arrserver suite (except Whisparr).
* A simple web server running an intranet home page, with automated inventories generated of all types of stored media, including file counts, data used and paths.
* Checkrr, a media file checker and fixer running on all media files daily.
* 2x Calibre-web libraries for eBooks and e-comics, and associated metadata correcting and cataloguing helpers. These are accessible wirelessly by my e-reader devices.
* Several Samba mounts for ingress of different types of content (audio, video, ebooks etc) that automatically get imported to the file server libraries by scripts.
* Samba mount for a huge collection of retro gaming and arcade ROMs that are playable remotely by my gaming PC.
* NextDNS for DNS-level blocking and anonymous and secure DNS lookups.
* Unbound DNS server forwarding all DNS requests recieved on port 53 of the Opnsense server to NextDNS servers using DNS over SSL.
* Ubiquiti UnifiOS Controller.

{{< figure
    src="speed.png"
    alt="A picture showing a recent speed test from my home server under fully loaded conditions - 5gibts/sec download was spare."
    caption="My home server testing its internet connection under typical local conditions - 5gbits/sec download was spare!"
>}}

### Services run on the server:

* Thor APT AV professional malware scanner running fully automated weekly runs.
* Weekly fully automated Borg backup runs.
* Weekly fully automated rsync syncs of the backup runs to my dedicated backup server.

