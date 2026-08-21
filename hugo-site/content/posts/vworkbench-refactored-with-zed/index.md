---
date: 2026-08-21T21:40:13+00:00
title: vWorkbench Heavily Refactored with Zed + GenAI
url: /vworkbench-refactored-with-zed/
image: /$2
author: David Craddock
---
{{< figure
    src="workbench.png"
    alt="A picture of a mobile woodworkers workbench in an attempt to make an analogy between my vworkbench and theirs."
    caption="Another mobile workbench."
>}}


I have been completely 'blown away' by the excellent ['Zed' text editor](https://zed.dev).

With [Zed](https://zed.dev) combined with the current 'best value' Chinese model, which for me is [Deepseek v4 Pro](https://deepseek.com), it is an amazing 'power tool' to make some much needed refactoring and further development to the open source projects I've been working on for literally.. decades. It is the closest replacement for VIM9 as my daily driver that I've EVER encountered.. and I have been using Vim for at least 20 years.

Using Zed, I have heavily refactored [vWorkbench](https://davidcraddock.net/vworkbench) in preparation for [dockerizing](https://docker.io) it for test purposes.

Once I have a reliable automated CI/CD dockerized deploy and test, I will be in the position to move to the next stage of my 'roadmap' - which is to convert the entire project to a huge [Ansible](https://docs.ansible.com/projects/ansible/latest/getting_started/introduction.html) playbook.

It is already looking much better and much less of a hassle to work with and run.

If you haven't already, [check it out](https://davidcraddock.net/vworkbench) - [vWorkbench](https://davidcraddock.net/vworkbench) is my customised combination of VIM9 editor plus ZSH shell plus a million other customisations. It currently runs only on [Almalinux](https://almalinux.org/), but will run on 'bare metal' Almalinux as well as Windows 11 WSL2.


{{< figure
    src="zed.png"
    alt="The Zed Editor logo."
    caption="Zed's not Dead, baby."
>}}

