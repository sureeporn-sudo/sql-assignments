-- 1. Employees with the highest salary
SELECT * FROM employee
ORDER BY salary DESC;

-- 2. Top 5 highest salary
SELECT * FROM employee
ORDER BY salary DESC
LIMIT 5;

-- 3. Top 30% highest salary
SELECT * FROM employee
ORDER BY salary DESC
LIMIT CEIL((SELECT COUNT(*) * 0.3 FROM employee));

-- 4. Second highest salary
SELECT DISTINCT salary
FROM employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1;
