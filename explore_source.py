"""
explore_source.py
Step 4 — Explore the source tables in classicmodels.duckdb.
Run from the classicmodels_dw/ directory:
    python explore_source.py
"""
import duckdb
import os

script_dir = os.path.dirname(os.path.abspath(__file__))
db_path = os.path.join(script_dir, 'classicmodels.duckdb')

con = duckdb.connect(db_path, read_only=True)

# ── 1. List all tables ────────────────────────────────────────────────────────
print("=" * 50)
print("Source tables in 'main' schema")
print("=" * 50)
tables = con.execute("""
    SELECT table_name
    FROM   information_schema.tables
    WHERE  table_schema = 'main'
    ORDER  BY table_name
""").fetchall()

for (t,) in tables:
    print(f"  {t}")

print(f"\nTotal: {len(tables)} tables")
expected = {'customers', 'employees', 'offices', 'orderdetails',
            'orders', 'payments', 'productlines', 'products'}
found = {t for (t,) in tables}
missing = expected - found
if missing:
    print(f"\n[WARN] Missing expected tables: {missing}")
else:
    print("[OK] All 8 expected tables found.")

# ── 2. Row counts per table ───────────────────────────────────────────────────
print("\n" + "=" * 50)
print("Row counts")
print("=" * 50)
for (t,) in tables:
    count = con.execute(f"SELECT COUNT(*) FROM {t}").fetchone()[0]
    print(f"  {t:<20} {count:>6} rows")

# ── 3. Sample: first 3 rows of each table ────────────────────────────────────
print("\n" + "=" * 50)
print("Sample rows (first 3 per table)")
print("=" * 50)
for (t,) in tables:
    print(f"\n-- {t} --")
    df = con.execute(f"SELECT * FROM {t} LIMIT 3").df()
    print(df.to_string(index=False))

con.close()
