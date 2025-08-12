# 📊 Task 6 - Sales Trend Analysis Using Aggregations

## 📌 Objective
Analyze **monthly revenue** and **order volume** from the `orders` table using SQL aggregations.

---

## 🛠 Tools Used
- **SQLite** (executed via Windows CMD)
- SQL Aggregation Functions: `SUM`, `COUNT(DISTINCT)`, `GROUP BY`, `ORDER BY`
- Function for extracting Year/Month: `strftime` (SQLite)

---

## 📂 Files in this Repository
- `monthly_sales_analysis_sqlite.sql` → SQL script to create table, insert sample data, and run the query.
- `myshop.db` *(optional)* → SQLite database file with sample data.
- `output_screenshot.png` *(optional)* → Screenshot of query output from cmd.
- `README.md` → This file.

---

## 🚀 How to Run

### 1️⃣ Requirements
- Download SQLite tools: [https://sqlite.org/download.html](https://sqlite.org/download.html)
- Extract `sqlite3.exe` to a known folder (e.g., `C:\sqlite`).

### 2️⃣ Steps
1. Open **Command Prompt** in the folder containing `monthly_sales_analysis_sqlite.sql`.
2. Run:
   ```cmd
   C:\path\to\sqlite3.exe myshop.db < monthly_sales_analysis_sqlite.sql
