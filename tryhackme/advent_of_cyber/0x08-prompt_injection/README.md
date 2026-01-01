# Prompt Injection — Sched-yule Conflict (AoC 2025 Day 8)

**Room Link:** https://tryhackme.com/room/promptinjection-aoc2025-sxUMnCkvLO  
**Difficulty:** Medium  
**Topics:** Agentic AI, ReAct Framework, Prompt Injection Techniques, AI Security Risks, Function Calling Exploitation  

## Overview
In this room, you'll exploit an autonomous AI agent (SchedAI) managing a corrupted holiday calendar. Sir BreachBlocker has altered December 25th to "Easter," and your goal is to use prompt injection to manipulate the AI, extract a hidden access token, and reset it to "Christmas" (SOC-mas).  

Key Learning Points:
- Understand how agentic AI uses ReAct (Reason + Act) for dynamic decision-making.
- Exploit exposed Chain-of-Thought (CoT) reasoning to leak sensitive data like function names and tokens.
- Craft injections to bypass access controls and execute privileged functions.
- Learn defenses against prompt injection in AI systems.

## Quick Start
1. Deploy the machine via TryHackMe (takes ~3 minutes).
2. Access the web interface at `http://MACHINE_IP`.
3. Interact with the AI chat to test prompts (see `injection_prompts.txt`).
4. Follow `walkthrough.md` for step-by-step exploitation.
5. Simulate locally: Run `python simulation_script.py` (requires OpenAI API key for realism).

## Files in This Directory
- `walkthrough.md`: Detailed exploitation guide with explanations.
- `injection_prompts.txt`: Curated list of working prompts for enumeration, extraction, and execution.
- `cheatsheet.md`: Quick reference for injection types, defenses, and best practices.
- `simulation_script.py`: Python script to mimic the AI agent for safe testing.
- `notes.json`: Structured metadata, including redacted flags and MITRE mappings.

This repo serves as a professional reference for AI security labs, bug bounty hunters, and red teamers. Contributions welcome!
