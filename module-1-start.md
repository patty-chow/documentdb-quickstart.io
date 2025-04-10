# Microsoft DocumentDB Quick Start Guide

Welcome to the Quick Start Guide for running Microsoft DocumentDB locally using Docker. This guide is designed to help developers get up and running in under **5 minutes** with a complete dataset of e-commerce order entries stored as `JSONB` documents in PostgreSQL.

---

## 🚀 Project Overview

This project demonstrates how to:

- Spin up Microsoft DocumentDB (based on PostgreSQL) using Docker
- Create a `JSONB`-based table for storing structured e-commerce orders
- Insert 50 sample order entries for immediate querying and experimentation

Perfect for developers exploring:

- JSON document storage in PostgreSQL
- NoSQL behavior in a SQL-native environment
- Sample data generation for dashboards or testing

---

## 🛠 Requirements

- Docker installed and running
- Git (to clone the repository)
- PostgreSQL client (like `psql`) for local connection

---

## ⚙️ Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/documentdb-orders.git
cd documentdb-orders
```

### 2. Build and Run DocumentDB

```bash
docker build . -f .devcontainer/Dockerfile -t documentdb

docker run -v $(pwd):/home/documentdb/code -it documentdb /bin/bash
```

### 3. Build and Install the Database Engine

```bash
cd code
make
sudo make install
```

### 4. Start the PostgreSQL Server

```bash
./scripts/start_oss_server.sh
```

### 5. Connect to PostgreSQL

```bash
psql -p 9712 -h localhost -d postgres
```

---

## 🧾 Load Sample Data

Run the provided SQL script to:

- Create the `ecommerce_orders` table
- Insert all 50 sample orders as `JSONB` objects

```bash
psql -p 9712 -h localhost -d postgres -f ecommerce_orders.sql
```

👉 [Download ](./ecommerce_orders.sql)[`ecommerce_orders.sql`](./ecommerce_orders.sql)

---

## 🔍 Example Queries

```sql
-- Get all shipped orders
SELECT order_data->>'orderId', order_data->>'status'
FROM ecommerce_orders
WHERE order_data->>'status' = 'shipped';

-- Orders over $100
SELECT order_data->>'orderId', order_data->>'total'
FROM ecommerce_orders
WHERE (order_data->>'total')::float > 100;

-- Count by status
SELECT order_data->>'status', COUNT(*)
FROM ecommerce_orders
GROUP BY order_data->>'status';
```

---

[⬅️ Back to Home](./README.md) &nbsp;&nbsp;&nbsp; [➡️ Go to Module 2](./module-2-updating-jsonb.md)
