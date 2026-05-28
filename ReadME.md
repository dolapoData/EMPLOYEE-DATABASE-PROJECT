
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


## SQL Concepts Used

- SELECT, WHERE
- Comparison operators: >=, =, <=, BETWEEN
- Logical operators: AND, OR, NOT
- Pattern matching: LIKE
- Set membership: IN
- Combined multi-condition queries


