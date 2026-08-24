---
date: 2026-08-24T17:38:13+00:00
title: Test Automation-Directed Gen-AI Assisted Software Development
url: /test-automation-driven-GenAI-assisted-software-development/
image: /$2
author: David Craddock
---

I have just had a thought about a subject I want to explore:

"Test Automation-Directed Gen-AI Assisted Software Development":
***A process and workflow for rapid single-engineer AI-assisted development of software while keeping control over quality, alignment and direction*** - aka "TIDAS".

Yes. I know most developers thought/wished that test automation was 'dead and buried'. But it's really NOT, and it's never been more useful than it is today in the world of GenAI coding agents that hallucinate and cannot be 100% trusted to deliver what is asked for, because of alignment problems, training problems, overwhelming incentives to take unhelpful 'short cuts', et al.

The idea is:

1) The developer (you) is in charge of providing the specs to the GenAI agentic software development process, auditing loosely the pull requests the Agents make, AND developing (with the help of a different GenAI model) the tests that VERIFY whether the GenAI agentic software development process has output the correct software.

2) You can draw upon the existing large toolset and knowledge available in automated testing - such as Playwright, BDD, Cucumber, TDD.. to make this happen. You will also expected to learn and understand what makes a good test, the principles of test separation and state separation, mocking and stubbing, testing from a philosophical perspective, and how to automate these tests from a CI/CD perspective. Importantly, this verification suite is in a SEPARATE repository from the main software, cannot be read by the coding Agents, and you use a different model entirely for helping you implement this model. So it is a 'blind' test. You never share the full test output or code, just what features are failing in the software and where the bug is likely to be. This helps prevent 'gaming' or unhelpful 'short cut' local optimisation.

3) The Agents throw code deltas into your repository until all your tests pass. You audit each code delta for obvious mistakes/where the Agents have misunderstood your initial spec, and anything you need to elaborate on goes in the spec.

4) Once all tests in your suite that you maintain are passing, you also provide instructions to the Agents to aggressively refactor and STRIP OUT any unnecessary code, and make the code that is there as easy as possible to audit through implementing Clean Code and other 'code readability' standards.

5) Whenever a new feature is requested, you adjust the test suite accordingly, adjust the spec, get the AI Agentic software team to deliver until the test suite passes, audit the code delta, and then get them to aggressively refactor it again.


That's it. That's the process.
