# 📈 Module 6: Visualizing Your Data in DocumentDB

Welcome to Module 6. You’ve structured and queried your data—now it’s time to visualize it. In this module, you’ll learn how to connect your DocumentDB data to a dashboard tool for exploring orders, revenue, and trends in real time.

We’ll cover:
- Tools you can use (Metabase, Superset, etc.)
- Connecting PostgreSQL to a dashboard tool
- Building charts from JSONB fields

---

## 🛠 Recommended Tools
All of these support PostgreSQL out of the box:
- [Metabase](https://www.metabase.com/)
- [Apache Superset](https://superset.apache.org/)
- [Grafana](https://grafana.com/grafana/)
- [Redash](https://redash.io/)

We’ll use **Metabase** for this walkthrough.

---

## 🔌 Step 1: Connect Metabase to DocumentDB
1. Install Metabase (Docker or standalone)
2. Launch it and go through the setup
3. Add a new **PostgreSQL** database:
   - Host: `localhost`
   - Port: `9712` (if using the default from earlier modules)
   - DB Name: `postgres`
   - User/Pass: your setup credentials

---

## 📊 Step 2: Explore a Table
- Go to **Browse Data** → Select your `ecommerce_orders` table
- Click **Summarize**
- Start with a simple metric: average `total` across all orders

---

## 📦 Step 3: Build Visuals from JSONB
Metabase supports raw SQL queries.

### Total revenue by status:
```sql
SELECT order_data->>'status' AS status,
       SUM((order_data->>'total')::numeric) AS revenue
FROM ecommerce_orders
GROUP BY order_data->>'status';
```

Visualize this as a **bar chart** or **donut chart**.

---

## 🧠 Try This
- Count of orders per day using `shippedAt`
- Top 5 most frequently ordered products
- Average order value per user

---

## ✅ Up Next: Creating an API
In Module 7, you’ll build a lightweight API to query and serve your JSONB data to the outside world.

---

[⬅️ Back to Module 5](./module-5-expanding-model.md) &nbsp;&nbsp;&nbsp; [➡️ Go to Module 7](./module-7-api.md)
