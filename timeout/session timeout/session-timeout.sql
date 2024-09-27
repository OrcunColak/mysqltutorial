-- See https://medium.com/@office.yeon/spring-batch-connection-timeout-correlation-between-mysql-and-hikaricp-d27e4112c9c3
The wait_timeout is a server system variable that determines how long an idle connection is allowed to remain open before
it is automatically closed by the MySQL server.

  Minimum: 1 second
  Maximum: 31536000 seconds (1 year)
  Default: 28800 seconds (8 hours)
  It has two scopes: session and global. Therefore, you need to keep this in mind when configuring.

--session
set session wait_timeout=10

--global
set global wait_timeout=10