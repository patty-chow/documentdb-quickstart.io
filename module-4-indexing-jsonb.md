# ⚡ Module 4: Indexing JSONB for Performance in DocumentDB

Welcome to Module 4. So far, you've learned how to query and analyze JSONB data in DocumentDB. But once your data grows, **performance** becomes critical. In this module, we’ll cover how to create **indexes** that make your queries faster and more efficient.

You’ll learn:
- Why indexing matters for JSONB
- How to create GIN indexes for JSON fields
- When to use expression indexes
- How to benchmark query performance

---

## 🧠 Why Indexing Matters
Without indexes, every query has to scan every row in the table. That’s fine with 50 fake orders. It’s a problem with 500,000.

Indexing makes filters like `WHERE order_data->>'status' = 'shipped'` lightning fast.

---

## 🔍 GIN Index on a Top-Level Field
Let’s index the `status` field inside `order_data`:

```sql
CREATE INDEX idx_status ON ecommerce_orders
USING GIN ((order_data->>'status'));
```

This creates a functional GIN index, great for performance with JSONB expressions.

---

## 📌 Index on Nested JSON Arrays
Want to optimize queries inside the `items` array? For example, finding orders that include a specific product:

```sql
CREATE INDEX idx_product_items ON ecommerce_orders
USING GIN ((order_data->'items'));
```

Or, if you often filter like:
```sql
WHERE item->>'product' = 'Bluetooth Mouse'
```
You’ll want to index `order_data->'items'` and unpack it in your query with `jsonb_array_elements`.

---

## 🧪 Expression Indexes (Custom Filters)
Create a specific index for one query:

```sql
CREATE INDEX idx_high_value_orders ON ecommerce_orders
USING BTREE ((order_data->>'total')::numeric);
```

This improves queries like:
```sql
SELECT * FROM ecommerce_orders
WHERE (order_data->>'total')::numeric > 100;
```

---

## 📈 Benchmark It Yourself
Use `EXPLAIN ANALYZE` to see the difference with and without the index:

```sql
EXPLAIN ANALYZE
SELECT * FROM ecommerce_orders
WHERE order_data->>'status' = 'shipped';
```

Try running this before and after creating the GIN index to compare execution times.

---

## ✅ Up Next: Expanding the Data Model
In Module 5, we’ll introduce related tables (like `users` or `products`) and explore hybrid SQL/NoSQL models.

---

[⬅️ Back to Module 3](./module-3-aggregations.md) &nbsp;&nbsp;&nbsp; [➡️ Go to Module 5](./module-5-expanding-model.md)

