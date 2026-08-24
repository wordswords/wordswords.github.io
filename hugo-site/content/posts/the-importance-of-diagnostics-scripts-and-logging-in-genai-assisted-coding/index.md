---
date: 2026-02-24T18:26:13+00:00
title: The Importance of Diagnostics and Logging in Gen-AI Assisted Development
url: /the-importance-of-diagnostics-and-logging-in-genai-assisted-development/
author: David Craddock
---

I have noticed that often, the model that helps you write the software has no way of executing it in a real environment.

When the environments that the software are deployed on are not guaranteed to be the same, and when users are likely to try any number of different combinations possible, it is extremely useful to have, as part of your software, a full and extensive logging system AND diagnostic scripts reporting the exact conditions of the deployed software.

This is so that, when problems do occur, you can just plug those diagnostics and logs back into the GenAI coding agent, and tell them to 'fix it' - and they will, just fix it.

Some kind of automated telemetry->fix->patch process may well be possible given enough engineering effort.


