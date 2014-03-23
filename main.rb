require 'pry'
require 'active_record'
require_relative 'setup'
require_relative 'application'
require_relative 'contact'

ActiveRecord::Base.logger = Logger.new(STDOUT)


a = Application.new

loop do
  a.run
end

