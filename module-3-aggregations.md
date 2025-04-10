# 📊 Module 3: Aggregations and Analytics in DocumentDB

Welcome to Module 3! Now that you can confidently update and manipulate JSONB data in DocumentDB, it's time to explore how to **analyze** that data. We'll use PostgreSQL’s power to extract insights from nested structures.

This module covers:
- Unpacking JSON arrays with `jsonb_array_elements`
- Calculating totals, averages, and counts
- Grouping and filtering by JSON fields

---

## 🧮 Total Revenue from All Orders
Calculate the sum of the `total` field across all orders:

```sql
SELECT SUM((order_data->>'total')::numeric) AS total_revenue
FROM ecommerce_orders;
```

---

## 📦 Most Frequently Ordered Products
Let’s count how often each product appears across all orders:

```sql
SELECT item->>'product' AS product, SUM((item->>'qty')::int) AS total_ordered
FROM ecommerce_orders,
     jsonb_array_elements(order_data->'items') AS item
GROUP BY item->>'product'
ORDER BY total_ordered DESC;
```

This uses `jsonb_array_elements` to unpack the `items` array in each order.

---

## 📊 Average Number of Items per Order
How many products (qty-wise) are in the average order?

```sql
SELECT AVG(total_items) AS avg_items_per_order
FROM (
  SELECT SUM((item->>'qty')::int) AS total_items
  FROM ecommerce_orders,
       jsonb_array_elements(order_data->'items') AS item
  GROUP BY order_data
) AS sub;
```

---

## 📅 Revenue by Order Status
See how much revenue came from each order status:

```sql
SELECT order_data->>'status' AS status,
       SUM((order_data->>'total')::numeric) AS revenue
FROM ecommerce_orders
GROUP BY order_data->>'status'
ORDER BY revenue DESC;
```

---

## 🧠 Try This
- Count how many unique users have placed orders
- Show the top 5 highest-value orders
- Count how many times each `status` appears

---

## ✅ Up Next: Indexing JSONB for Performance
Next, we’ll look at how to make all of this run faster by indexing key parts of your JSON documents.

---

[⬅️ Back to Module 2](./module-2-updating-jsonb.md) &nbsp;&nbsp;&nbsp; [➡️ Go to Module 4](./module-4-indexing-jsonb.md)

