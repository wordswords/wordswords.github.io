---
date: "2023-12-17T02:13:39+00:00"
guid: https://davidcraddock.net/?page_id=4287
title: My Homelab
url: /my-home-network/

---

I have built a 10Gb/second network in my home in a network cabinet.

Hardware:

* I use a Mikrotik router and Mikrotik switch to route at 10Gb/sec speeds, and 2x Mikrotik wifi APs and a Ubiquiti wifi AP in a mesh mode.
* I have a Protecli custom network interface fanless PC that runs Opnsense with Suricata IDS that monitors all traffic to and from the internet on my network.
* A 6 bay 48TB NAS Linux server that runs Debian, and hosts around 20 services, mostly using docker compose.
* A couple of Windows 11 PCs which I use day-to-day.
* Several tablets, e-readers and smart phones.
* Many IoT and smart home devices.

Security goals:

* No double NAT.
* No static IP.
* Zero ports open to the internet.
* Software-defined VPN remote access to the network only.
* IDS collecting data continually with a large ruleset to flag any suspicious traffic.
* Anonymising VPN connections to exit nodes in other countries for private traffic.
* Automated weekly security updates using bash scripting to upgrade all Mikrotik devices, Opnsense, Debian server and all Windows 11 PCs (via remote SSH access and Powershell scripts).
* Automated weekly backups of all crucial files (both system and data) on all devices, including Mikrotik, Windows PC, Debian server, Opnsense box.
* Advertising, analytics, malware and tracker blocking on the DNS level for all the network.
* Hardened Mikrotik and Linux server configurations, with minimal ports listening, and firewalls correctly enabled.

Network services run:

* Plex Media Server, Tautalini and Kometa services.
* Full arrserver suite.
* A simple web server running an intranet home page, with automated inventories generated of all types of stored media, including file counts, data used and paths.
* Checkrr, a media file checker and fixer.
* 2x Calibre-web libraries for ebooks and comics, and associated metadata correcting and cataloguing helpers. These are accessible wirelessly by my e-reader devices.
* Several Samba mounts for different types of content (audio, video, ebooks etc) that automatically get imported by scripts.
* Samba mount for a huge collection of retro gaming and arcade ROMs that are playable remotely by my gaming PC.
* NextDNS for DNS-level blocking and anonymous and secure DNS lookups.
* HomeAssistant that controls smart home IoT devices.

Services run on the server:

* Thor APT AV professional malware scanner running fully automated weekly runs.
* Weekly fully automated Borg backup runs.
* Weekly fully automated rclone syncs of the backup runs to a Amazon Deep Glacier S3 bucket.

