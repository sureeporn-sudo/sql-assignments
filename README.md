# SQL Assignment – PostgreSQL Queries

This repository contains SQL solutions for **Assignment** using the **SQL-Top-Load** dataset.  
All queries are written for **PostgreSQL**, including examples of sorting, top-N queries, percentage-based selection, and subqueries.

---

## 🧠 Topics Covered
✔ Ordering data  
✔ LIMIT & OFFSET  
✔ Subqueries  
✔ DISTINCT  
✔ Percentage-based selection  
✔ CEIL()  
✔ Understanding highest & second-highest values  

---

## 📝 SQL Queries Included

### **1. Employees with the highest salary**
```sql
SELECT * FROM employee
ORDER BY salary DESC;
```

### **2. Top 5 highest salary**
```sql
SELECT * FROM employee
ORDER BY salary DESC
LIMIT 5;
```

### **3. Top 30% highest salary**
 ```sql
SELECT * FROM employee
ORDER BY salary DESC
LIMIT CEIL((SELECT COUNT(*) * 0.3 FROM employee));
```

### **4. Second highest salary**
```sql
SELECT DISTINCT salary
FROM employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1;
```


