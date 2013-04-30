PostgreSQL cookbook
-------------------

Install the PostgreSQL service using the package manager.
Add the PGDG (PostgreSQL Global Development Group) apt repository to get the last version of PostgreSQL.
Add a sudo rule to allow the `addons` user to execute command as `postgres` user.

Attributes
----------

`node['postgresql']['addresses']`          : PostgreSQL service listening IP addresses (comma-separated)
`node['postgresql']['port']`               : PostgreSQL service listening port
`node['postgresql']['max']['connections']` : Maximum number of connections to the service