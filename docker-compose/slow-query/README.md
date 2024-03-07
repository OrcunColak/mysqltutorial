From https://stackoverflow.com/questions/22609257/how-do-i-enable-the-mysql-slow-query-log

We can achieve the same results with SQL

```sql
set global log_queries_not_using_indexes = 'ON'
```

```sql
-- Set the path to the slow query log
set global slow_query_log_file ='/var/log/mysql/slow-query.log';
```

```sql
-- Log details for queries expected to retrieve all rows instead of using an index
set global log_queries_not_using_indexes = 'ON'
```

```sql
-- Set the amount of time a query needs to run before being logged: (default is 10 seconds)
set global long_query_time = 20;
```