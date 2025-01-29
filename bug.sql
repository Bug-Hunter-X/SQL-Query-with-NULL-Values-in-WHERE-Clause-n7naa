```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```
This query might seem correct at first glance, but it can lead to unexpected results if there are employees with salaries that are NULL.  The `>` operator will not correctly compare NULL values, leading to those employees being excluded from the results, even though they may be in the Sales department and have high salaries (but whose salary is unknown).