# Read me

The original information is from
https://planetscale.com/blog/mysql-charsets-collations

This shows charset

```sql
SHOW CREATE TABLE tablename;
```

The output is
> CREATE TABLE `all_char_types_table` (
> ...
> ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

# utf8mb4

utf8mb4 means that it is actually UTF-8


# utf8mb4_0900_ai_ci

It is **Accent-insensitive** and **Case-insensitive**

| Suffix | Meaning            |
|--------|--------------------|
| _ai    | Accent-insensitive |
| _as    | Accent-sensitive   |
| _ci    | Case-insensitive   |
| _cs    | Case-sensitive     |
| _ks    | Kana-sensitive     |
| _bin   | Binary             |
