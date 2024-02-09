# Log to File

See  
https://medium.com/@ervrajdesai999/exploring-saveall-method-of-spring-data-jpa-with-batching-properties-of-hibernate-94128d85dff3

The "/var/log/sql/" folder must exist

Type

```sql
SET GLOBAL log_output = 'FILE';
SET GLOBAL general_log_file = '/var/log/sql/general.log';
SET GLOBAL general_log = 'ON';

-- make sure to turn general_log OFF after you are done.
-- make sure the correct file permissions are present
SET GLOBAL general_log = 'OFF';
```

We can tail the file now