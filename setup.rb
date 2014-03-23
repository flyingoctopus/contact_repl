# Output messages from AR to STDOUT
ActiveRecord::Base.logger = Logger.new(STDOUT)

puts "Establishing connection to database ..."
#ActiveRecord::Base.establish_connection(
  #adapter: 'postgresql',
  #encoding: 'unicode',
  #pool: 5,
  #database: 'd41v60r8f4uio6',
  #username: 'baorjodkhgotca',
  #password: 'cG6WmW0m4HExgxS4kwx9Zxer5Y',
  #host: 'ec2-54-204-24-202.compute-1.amazonaws.com',
  #port: 5432,
  #min_messages: 'error',
  #table_name: 'contacts'
#)
ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  encoding: 'unicode',
  pool: 5,
  database: 'melissa',
  host: 'localhost',
  port: 5432,
  min_messages: 'error',
)
puts "CONNECTED"

# # puts "Setting up Database (recreating tables) ..."

# # ActiveRecord::Schema.define do
# #   create_table :contact do |t|
# #     t.column :firstname, :string
# #     t.column :lastname, :string
# #     t.column :email, :string
# #     t.column :phone_number, :integer
# #     t.timestamps
# #   end
# # end

# puts "Setup DONE"

