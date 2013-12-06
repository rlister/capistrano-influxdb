# capistrano-influx

Simple Capistrano 3 plugin to report deploys to influxdb.

## Usage

Gem install (or bundle):

```sh
gem install capistrano-influxdb
```

Add to `Capfile`:

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
