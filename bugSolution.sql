```sql
SELECT * FROM employees WHERE department = 'Sales' AND (salary > 100000 OR salary IS NULL);
```

This revised query explicitly checks for `NULL` salaries using the `IS NULL` operator.  The `OR` condition ensures that employees with `NULL` salaries are included in the result set.  Alternatively, you could use `COALESCE` to replace `NULL` with a default value before comparison.