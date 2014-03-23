require "rubygems"

require 'active_record'
require 'yaml'



namespace :db do

  desc "Migrate the db"
  task :migrate do
    connection_details = { 
                          adapter: 'postgresql',
                          encoding: 'unicode',
                          pool: 5,
                          database: 'melissa',
                          host: 'localhost',
                          port: 5432,
                          min_messages: 'error',
                          table_name: 'contacts' }
    ActiveRecord::Base.establish_connection(connection_details)
    ActiveRecord::Migrator.migrate("db/migrate/")
  end

  desc "Create the db"
  task :create do
    connection_details = { 
                          adapter: 'postgresql',
                          encoding: 'unicode',
                          pool: 5,
                          port: 5432,
                          database: '',
                          host: 'localhost',
                          min_messages: 'error',
                          table_name: 'contacts'}
    ActiveRecord::Base.establish_connection(connection_details)
    ActiveRecord::Base.connection.create_database 'melissa'
  end

  desc "drop the db"
  task :drop do
    connection_details = { 
                          adapter: 'postgresql',
                          encoding: 'unicode',
                          pool: 5,
                          database: '',
                          host: 'localhost',
                          port: 5432,
                          min_messages: 'error',
                          table_name: 'contacts' }
    ActiveRecord::Base.establish_connection(connection_details)
    ActiveRecord::Base.connection.drop_database 'melissa'
  end
end

