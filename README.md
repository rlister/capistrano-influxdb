# capistrano-influx

Simple Capistrano 3 plugin to report deploys to influxdb.

## Usage

```ruby
require 'capistrano/influxdb'

set :influxdb_connection, {
  host: 'influxdb.example.com',
  port: 8086,
  username: 'myuser',
  password: 'mypass',
}

set :influxdb_database, 'deploys'
set :influxdb_series,   'capistrano'
```
