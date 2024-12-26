```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```

This query might seem correct at first glance, but it can lead to an unexpected issue if the `salary` column allows `NULL` values.  If an employee in the Sales department has a `NULL` salary, this query will not return that employee's data because `NULL` is not greater than 100000 (or any other number for that matter).  Comparisons with `NULL` always resolve to `UNKNOWN`, which is treated as false in SQL.

This is a subtle bug because the condition appears logical, but the handling of `NULL` values requires special consideration.