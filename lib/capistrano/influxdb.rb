require 'influxdb'

namespace :influxdb do

  desc 'Send deploy event to influxdb'
  task :report do
    on :local do
      influxdb = InfluxDB::Client.new(
        fetch(:influxdb_database, 'deploys'),
        fetch(:influxdb_connection, {})
      )

      data = fetch(:influxdb_variables, [
          :application,
          :branch,
          :stage,
      ]).inject({}) do |hash, key|
        hash[key] = fetch(key, nil); hash
      end
      
      info "Reporting deploy to influxdb"
      influxdb.write_point(fetch(:influxdb_series, 'capistrano'), data)
    end
  end

end

after 'deploy:finished', 'influxdb:report'
