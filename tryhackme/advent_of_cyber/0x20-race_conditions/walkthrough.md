# Race Condition Exploitation Report: Toy E-Commerce Platform

## Vulnerability Overview
The checkout endpoint performs non-atomic inventory checks:
1. Read current stock
2. If stock > 0, decrement
3. Commit transaction

This allows concurrent requests to pass the check before decrement, resulting in overselling.

## Exploitation Phase

### Target 1: SleighToy Limited Edition
- Initial stock: 1
- Captured legitimate checkout POST request via Burp
- Sent 20+ concurrent requests using:
  - Python multi-threading (`python_race_exploit.py`)
  - Burp Turbo Intruder (`turbo_intruder_script.py`)
- Result: Stock → -X (negative)
- Flag revealed: **THM{WINNER_OF_R@CE007}**

### Target 2: Bunny Plush (Blue)
- Repeated identical process on second limited item
- Achieved negative stock
- Flag revealed: **THM{WINNER_OF_BUNNY_R@CE}**

## Defensive Implementation

### Option 1: Database-Level Atomicity (Recommended)
```python
# From patched_app.py
with sqlite3.connect('database.sqlite') as conn:
    conn.execute("BEGIN IMMEDIATE")
    cursor = conn.cursor()
    cursor.execute("SELECT stock FROM items WHERE id = ? FOR UPDATE", (item_id,))
    # Critical section protected
