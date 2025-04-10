# 🌐 Module 7: Creating an API for DocumentDB

Welcome to the final module! You’ve built the schema, queried it, analyzed it, and visualized it. Now let’s make that data available to the outside world via a lightweight **REST API**.

In this module:
- Build a simple FastAPI service
- Connect to DocumentDB
- Expose order data using SQL and JSONB queries

---

## 🚀 Step 1: Set Up FastAPI
Install dependencies:
```bash
pip install fastapi uvicorn psycopg2-binary
```

Create a file called `main.py`:
```python
from fastapi import FastAPI
import psycopg2
import os

app = FastAPI()

conn = psycopg2.connect(
    dbname="postgres",
    user="youruser",
    password="yourpassword",
    host="localhost",
    port="9712"
)

@app.get("/orders")
def get_orders():
    with conn.cursor() as cur:
        cur.execute("SELECT order_data FROM ecommerce_orders LIMIT 10;")
        rows = cur.fetchall()
        return [row[0] for row in rows]
```

---

## ▶️ Step 2: Run the API
```bash
uvicorn main:app --reload
```
Open [http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs) to test it via Swagger UI.

---

## 🔍 Step 3: Add Query Support
Update your API to support search filters:
```python
@app.get("/orders/by-status")
def get_orders_by_status(status: str):
    with conn.cursor() as cur:
        cur.execute("""
            SELECT order_data
            FROM ecommerce_orders
            WHERE order_data->>'status' = %s
            LIMIT 10;
        """, (status,))
        rows = cur.fetchall()
        return [row[0] for row in rows]
```
Test it at `/orders/by-status?status=shipped`

---

## 🧠 Try This
- Add pagination to your `/orders` endpoint
- Create a `/orders/{order_id}` endpoint
- Expose revenue summaries with SQL queries from Module 3

---

## 🎓 You Did It
You’ve now built a full-stack, document-powered backend using PostgreSQL + DocumentDB. You:
- Loaded and queried JSONB data
- Transformed and aggregated documents
- Indexed fields for speed
- Connected dashboards
- Built an API on top of it

The programmer inside you is proud. Congrats.

---

[⬅️ Back to Module 6](./module-6-visualization.md)

