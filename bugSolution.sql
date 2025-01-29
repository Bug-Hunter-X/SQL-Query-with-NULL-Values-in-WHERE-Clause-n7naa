```sql
SELECT * FROM employees WHERE department = 'Sales' AND (salary > 100000 OR salary IS NULL);
--Alternative approach using coalesce
SELECT * FROM employees WHERE department = 'Sales' AND COALESCE(salary,0) > 100000;
```
The solution uses the `OR salary IS NULL` condition to include employees with NULL salaries or those with salaries greater than 100000.  The alternative utilizes the `COALESCE` function to replace `NULL` values with 0 for comparison purposes.  Choose the method most appropriate for your specific needs and data context.