# CyberChef Cryptanalysis Investigation: Hoperation Save McSkidy (AoC 2025 Day 17)

## Mission Briefing
Bypass 5 locks guarding McSkidy by decoding AI guard responses using CyberChef. Each lock escalates in complexity, demonstrating core cryptanalysis skills.

## Lock Mastery Demonstration

### Lock 1: Outer Gate (Single Base64)
- **Guard Prompt:** Base64-encode username ("Carl" → "Q2FybA==") + magic question from headers.
- **Response Decoding:** From Base64 → Password: **Iamsofluffy**
- **Recipe:** See `recipes/lock1_base64.json`
- **Skill Demo:** Basic decoding; verify with `tools/simulate_guard.py --lock 1`

### Lock 2: Double Encoding Challenge
- **Response:** Double Base64 layer.
- **Decoding:** From Base64 (twice) → **Itoldyoutochangeit!**
- **Recipe:** `recipes/lock2_double_base64.json`
- **Pro Tip:** Chain ops in CyberChef for efficiency.

### Lock 3: XOR Cryptography
- **Key Discovery:** HTTP headers/recipe ID ("cyberchef").
- **Decoding:** From Base64 → XOR (key: cyberchef, hex output) → **BugsBunny**
- **Recipe:** `recipes/lock3_xor.json`
- **Skill Demo:** Symmetric reversal; test key variations.

### Lock 4: Hash Reversing
- **Response:** MD5 hash.
- **Cracking:** Identify hash type → CrackStation lookup → **passw0rd1**
- **Recipe:** `recipes/lock4_md5.json` (for identification)
- **Integration:** Use `tools/crack_hash.py` for automation.

### Lock 5: Dynamic Multi-Op Chain
- **Response:** Rotating scheme (Base64 + ROT13 + XOR, etc.).
- **Decoding:** Build chain per recipe ID → **51rBr34chBl0ck3r**
- **Recipe:** `recipes/lock5_dynamic_chain.json`
- **Advanced Demo:** Use `tools/recipe_builder.py` for custom chains.

## Final Retrieval
- All locks bypassed → McSkidy rescued → Flag: [Redacted; notes.json]

## Professional Extensions
- **AI Assistance:** Prompt Grok: "Generate CyberChef recipe for double XOR + Base64."
- **Blue Team:** Detect obfuscated traffic with `detection/sigma_obfuscated_prompt.yml`.
- **OWASP Mapping:** Aligns with LLM01: Prompt Injection—see `detection/owasp_llm_top10_mapping.md`.

Demonstrate elite decoding, chaining, and cryptanalysis proficiency.
