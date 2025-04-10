# 🧩 Module 5: Expanding the Data Model in DocumentDB

You’ve mastered querying, updating, aggregating, and indexing JSONB documents. Now it’s time to expand. This module introduces a hybrid model approach—combining structured relational tables with flexible document-style JSON data.

We’ll cover:
- When and why to use related tables
- How to model relationships in a NoSQL-style PostgreSQL setup
- Combining JSONB and traditional SQL joins

---

## 🏗 Use Case: Separating Users from Orders
Instead of embedding user info inside each order, let’s separate it into its own table.

### Create a Users Table:
```sql
CREATE TABLE users (
  id TEXT PRIMARY KEY,
  name TEXT,
  email TEXT,
  created_at TIMESTAMP DEFAULT now()
);
```

### Modify Your Orders (Optional):
Add a simple foreign key-style reference:
```json
{
  "orderId": "ORD1051",
  "userId": "user_001",
  "items": [...],
  "total": 59.99,
  "status": "shipped",
  "shippedAt": "2024-03-08T12:00:00Z"
}
```

---

## 🔗 Joining JSON and Relational Data
Example: Get each user's email with their order totals.

```sql
SELECT u.email, o.order_data->>'total' AS total
FROM ecommerce_orders o
JOIN users u ON u.id = o.order_data->>'userId';
```

You just joined a relational table with a JSON document. Welcome to hybrid paradise.

---

## 🔁 Normalizing Product Data
If your product catalog gets complex, consider creating a `products` table and replacing the embedded names with product IDs.

This helps with:
- Avoiding duplication
- Easier updates
- Consistency across orders

---

## 🔬 Try This
- Create a `products` table with name, SKU, and price
- Link orders to it by storing `productId` in each item
- Write a join query to pull full product info from an order

---

## ✅ Up Next: Visualizing Your Data
In Module 6, we’ll plug this data into a dashboard tool and build real-time visualizations.

---

[⬅️ Back to Module 4](./module-4-indexing-jsonb.md) &nbsp;&nbsp;&nbsp; [➡️ Go to Module 6](./module-6-visualization.md)
