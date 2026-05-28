
# Employee Database Project

A SQL project analyzing an employee database to answer 
business questions using filtering, logic, and pattern matching.



## Objectives

* Query an employee database to extract meaningful business insights
* Filter and segment employee data based on salary, department, and status
* Combine multiple conditions to answer complex business questionS

## Tools Used

* MySQL Workbench

## Dataset

 [employees_sample.xlsx](data/employees_sample.xlsx)


Columns:

- employee_number (INT) — Unique employee ID
- first_name (VARCHAR)
- last_name (VARCHAR)
- gender (VARCHAR) — Male / Female
- department (VARCHAR) — e.g. IT, Finance, HR, Sales
- job_title (VARCHAR) — e.g. Analyst, Manager, Officer
- hire_date (DATE) — Format: YYYY-MM-DD
- salary (INT) — Annual salary
- employment_status (VARCHAR) — Active / On Leave / Resigned


## Business Questions

1. Which employees earn 120,000 or more?
2. What are the full details of employee number 1005?
3. Who works in the IT department?
4. Which female employees are in the Finance department?
5. Which employees earn between 70,000 and 90,000?
6. Which employees are not currently Active?
7. Who holds a Management position?
8. Which employees work in Sales, Marketing, or Operations?
9. Which employees have a first name starting with "A"?
10. Which male employees in Sales or IT were hired after 
    2015-01-01 and earn more than 80,000?


## Business Questions & Queries

1. Which employees earn 120,000 or more?
   
``` sql
SELECT * FROM employees
WHERE salary >= 120000;
```

2. What are the full details of employee number 1005?
   
```sql
SELECT * FROM employees
WHERE employee_number = 1005;
```

3. Who works in the IT department?
   
```sql
SELECT * FROM employees
WHERE department = 'IT';
```

4. Which female employees are in the Finance department?

```sql
SELECT * FROM employees
WHERE gender = 'Female'
AND department = 'Finance';
```

5. Which employees earn between 70,000 and 90,000?
   
```sql
SELECT * FROM employees
WHERE salary BETWEEN 70000 AND 90000;
```

6. Which employees are not currently Active?

```sql
SELECT * FROM employees
WHERE employment_status != 'Active';
```

7. Who holds a Management position?

```sql
SELECT * FROM employees
WHERE job_title LIKE '%Manager%';
```

8. Which employees work in Sales, Marketing, or Operations?
   
```sql
SELECT * FROM employees
WHERE department IN ('Sales', 'Marketing', 'Operations');
```

9. Which employees have a first name starting with "A"?
    
```sql
SELECT * FROM employees
WHERE first_name LIKE 'A%';
```

10. Which male employees in Sales or IT were hired after
    2015-01-01 and earn more than 80,000?
    
```sql
SELECT * FROM employees
WHERE gender = 'Male'
AND department IN ('Sales', 'IT')
AND hire_date > '2015-01-01'
AND salary > 80000;
```


## Findings

1. High Earners (salary >= 120,000)
   - Mary Mensah — Finance, Manager, 120,000
   - Lerato Abebe — IT, Manager, 130,000

2. Employee Number 1005
   - Grace Kamau — Marketing, Coordinator, 72,000, Resigned

3. IT Department Employees
   - John Okafor — Analyst
   - Lerato Abebe — Manager

4. Female Employees in Finance
   - Mary Mensah — Manager, 120,000
   - Mary Mensah — Officer, 68,000

5. Employees Earning Between 70,000 and 90,000
   - John Okafor — IT, Analyst, 85,000
   - David Hassan — Sales, Executive, 95,000 (excluded)
   - Grace Kamau — Marketing, Coordinator, 72,000
   - Kwame Diallo — Operations, Specialist, 88,000
   - Fatima Bello — HR, Executive, 70,000
   - Omar Smith — Sales, Officer, 78,000
   - David Hassan — Sales, Analyst, 88,000
   - Grace Kamau — Marketing, Executive, 94,000 (excluded)

6. Employees Not Currently Active
   - Amina Ndlovu — HR, On Leave
   - Grace Kamau — Marketing, Resigned
   - Fatima Bello — HR, On Leave
   - Amina Ndlovu — HR, Resigned

7. Employees in Management Positions
   - Mary Mensah — Finance, Manager
   - Lerato Abebe — IT, Manager
   - John Okafor — IT, Manager

8. Employees in Sales, Marketing, or Operations
   - David Hassan — Sales
   - Grace Kamau — Marketing
   - Kwame Diallo — Operations
   - Omar Smith — Sales
   - David Hassan — Sales
   - Grace Kamau — Marketing

9. Employees Whose First Name Starts with "A"
   - Amina Ndlovu — HR, Officer, On Leave
   - Amina Ndlovu — HR, Coordinator, Resigned

10. Male Employees in Sales or IT, Hired After 2015-01-01,
    Earning More Than 80,000
    - David Hassan — Sales, Executive, 95,000, hired 2019-01-10
    - David Hassan — Sales, Analyst, 88,000, hired 2019-07-09


 ## Recommendations

1. Salary Review for Lower Bands
   Most employees earning below 80,000 are in HR and Marketing.
   Management might want to consider a salary review for these departments
   to improve retention.

2. Address High Resignation and Leave Rate
   4 employees are either Resigned or On Leave. HR should investigate
   the reasons and implement retention strategies especially in the
   HR department where 2 of the 4 cases exist.

3. Management Representation
   All 3 employees in Management positions are either in IT or Finance.
   Other departments like Sales, HR and Operations have no Managers
   in this dataset. Leadership gaps across these departments should be addressed.

4. Gender Balance in Finance
   All identified Finance employees in this dataset are female.
   A broader diversity review across departments is recommended
   to ensure balanced representation.

5. Sales and IT Talent
   Male employees in Sales and IT hired after 2015 and earning
   above 80,000 represent strong mid-career talent. These employees
   should be prioritized for leadership development programs.
     

## SQL Concepts Used

- SELECT, WHERE
- Comparison operators: >=, =, <=, BETWEEN
- Logical operators: AND, OR, NOT
- Pattern matching: LIKE
- Set membership: IN
- Combined multi-condition queries


