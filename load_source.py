import duckdb

# connect ke database (akan dibuat kalau belum ada)
con = duckdb.connect("classicmodels.duckdb")

tables = [
    "customers",
    "employees",
    "offices",
    "orders",
    "payments",
    "products",
    "productlines",
    "orderdetails"
]
path = 'dataset/'
for t in tables:
    print(f"Loading {t}...")
    con.execute(f"""
        CREATE OR REPLACE TABLE {t} AS
        SELECT * FROM read_csv(
            '{path+t}.csv',
            delim=';',
            header=True,
            ignore_errors=True
        )
    """)

con.close()

print("✅ Semua tabel berhasil masuk ke DuckDB!")