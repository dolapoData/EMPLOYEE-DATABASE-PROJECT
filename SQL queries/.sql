1. High Earners
```sql
SELECT * FROM employees
WHERE salary >= 120000;
```

2. Specific Employee
```sql
SELECT * FROM employees
WHERE employee_number = 1005;
```

3. IT Department
```sql
SELECT * FROM employees
WHERE department = 'IT';
```

4. Female Employees in Finance
```sql
SELECT * FROM employees
WHERE gender = 'Female'
AND department = 'Finance';
```

5. Salary Range
```sql
SELECT * FROM employees
WHERE salary BETWEEN 70000 AND 90000;
```


6. Inactive Employees
```sql
SELECT * FROM employees
WHERE employment_status != 'Active';
```


7. Management Positions
```sql
SELECT * FROM employees
WHERE job_title LIKE '%Manager%';
```


8. Sales, Marketing and Operations
```sql
SELECT * FROM employees
WHERE department IN ('Sales', 'Marketing', 'Operations');
```


9. Names Starting with A
```sql
SELECT * FROM employees
WHERE first_name LIKE 'A%';
```

10. Final Boss

```sql
SELECT * FROM employees
WHERE gender = 'Male'
AND department IN ('Sales', 'IT')
AND hire_date > '2015-01-01'
AND salary > 80000;
```

