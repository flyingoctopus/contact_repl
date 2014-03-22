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
                          database: 'd41v60r8f4uio6',
                          username: 'baorjodkhgotca',
                          password: 'cG6WmW0m4HExgxS4kwx9Zxer5Y',
                          host: 'ec2-54-204-24-202.compute-1.amazonaws.com',
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
                          database: 'd41v60r8f4uio6',
                          username: 'baorjodkhgotca',
                          password: 'cG6WmW0m4HExgxS4kwx9Zxer5Y',
                          host: 'ec2-54-204-24-202.compute-1.amazonaws.com',
                          port: 5432,
                          min_messages: 'error'}
    ActiveRecord::Base.establish_connection(connection_details)
    ActiveRecord::Base.connection.create_database 'contacts2'
  end

  desc "drop the db"
  task :drop do
    connection_details = { 
                          adapter: 'postgresql',
                          encoding: 'unicode',
                          pool: 5,
                          database: 'd41v60r8f4uio6',
                          username: 'baorjodkhgotca',
                          password: 'cG6WmW0m4HExgxS4kwx9Zxer5Y',
                          host: 'ec2-54-204-24-202.compute-1.amazonaws.com',
                          port: 5432,
                          min_messages: 'error',
                          table_name: 'contacts' }
    admin_connection = connection_details.merge({'database'=> 'd41v60r8f4uio6', 
                                                'schema_search_path'=> 'contacts'}) 
    ActiveRecord::Base.establish_connection(admin_connection)
    ActiveRecord::Base.connection.drop_database(connection_details.fetch('database'))
  end
end

