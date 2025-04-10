# 📦 Module 2: Updating JSONB Data in DocumentDB

Now that you've successfully loaded sample e-commerce orders into your local DocumentDB instance, it’s time to learn how to update and manipulate JSONB data directly inside PostgreSQL.

This module will walk you through:
- Adding new fields to your existing JSON documents
- Modifying nested values
- Removing or replacing specific JSON keys

---

## 🧪 Add New Fields
Let's say you want to add an estimated delivery date to all orders that have not yet been shipped.

```sql
UPDATE ecommerce_orders
SET order_data = jsonb_set(
  order_data,
  '{deliveryEstimate}',
  '"2024-03-15"',
  true
)
WHERE order_data->>'shippedAt' IS NULL;
```

The `jsonb_set()` function:
- Takes the original JSON document
- Navigates to a key (or creates it)
- Inserts the new value
- `true` allows it to create the key if it doesn’t already exist

---

## 🔄 Modify Existing Fields
Suppose you want to increase the quantity of all `USB-C Cable` products by 1:

```sql
UPDATE ecommerce_orders
SET order_data = jsonb_set(
  order_data,
  '{items}',
  to_jsonb(
    (
      SELECT jsonb_agg(
        CASE
          WHEN item->>'product' = 'USB-C Cable'
          THEN jsonb_set(item, '{qty}', to_jsonb((item->>'qty')::int + 1))
          ELSE item
        END
      )
      FROM jsonb_array_elements(order_data->'items') AS item
    )
  )
);
```

This looks scary, but it’s just:
- Unpacking the `items` array
- Looping over it
- Modifying only the matching entries
- Repacking the array into the `order_data`

---

## 🧹 Remove a Field
To remove the `deliveryEstimate` field (maybe you regret everything?):

```sql
UPDATE ecommerce_orders
SET order_data = order_data - 'deliveryEstimate';
```

---

## 🧠 Try This
- Add a `reviewStatus` field set to `"not_requested"` for all `delivered` orders.
- Change the `status` of all `cancelled` orders to `archived`.
- Remove the `shippedAt` field from all `pending` orders.

---

## ✅ Up Next: Aggregations and Analytics
In Module 3, we’ll explore how to use SQL to perform analytics on the JSON data—like calculating order volumes, revenue, and product popularity.

---

[⬅️ Back to Module 1](./module-1-start.md) &nbsp;&nbsp;&nbsp; [➡️ Go to Module 3](./module-3-aggregations.md)

