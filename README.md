# Chaos PostgreSQL Servicepack

This servicepack install and configure a PostgreSQL server instance and provide individual ressource access (database and database access).

It designed to work with [Chaos](https://github.com/garnieretienne/chaos) utility.

## Supported addon plans

* `chaos-postgresql:full` : Provide a PostgreSQL database with a dedicated account (no restriction)
* `heroku-postgresql:dev` : (heroku support) Alias for the `chaos-postgresql:full` plan

## Installation

### Setup the service provider host

`chaos servicepacks setup NAME https://github.com/garnieretienne/chaos-servicepack-postgresql.git --provider HOST` with `NAME` the name of your service (ex: `redis`) and `HOST` the bootstraped server hosting the service.

### Install the servicepack on an app server (and allow it to offer PostgreSQL addon plans)

**Note**: If the service provider host is also the app server, no need to install the servicepack on it (it had already be installed during its setup).

`chaos servicepacks install NAME --provider PROVIDER_HOST --server APP_SERVER_HOST` with `NAME` the name of your service (ex: `postgresql`), `PROVIDER_HOST` the host on which the servicepack has been setuped and `APP_SERVER_HOST` the host that will provide the PostgreSQL addon plans.

### Add an addon plan to an app

`chaos addons add ADDON_PLAN --server APP_SERVER --name APP_NAME` with `ADDON_PLAN` the plan name (ex: `chaos-postgresql:full`), `APP_SERVER` the host hosting the app and on which the servicepack has been installed, and `APP_NAME` the app to add the addon to.

## Config variables

* `POSTGRESQL_ADDRESSES`        : PostgreSQL service listening IP addresses (comma-separated)
* `POSTGRESQL_PORT`             : PostgreSQL service listening port
* `POSTGRESQL_MAX_CONNECTIONS`  : Maximum number of connections to the service

These configuration variable can be managed using the `chaos servicepacks config SERVICEPACK_NAME VAR=VALUE --provider SERVICE_PROVIDER` with `SERVICE_PROVIDER` the host on which the servicepack is setuped.

# License

Copyright (c) 2013 Etienne Garnier

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

