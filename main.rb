require 'pry'
require 'active_record'
require_relative 'setup'
require_relative 'application'
require_relative 'main'
require_relative 'contact'

ActiveRecord::Base.logger = Logger.new(STDOUT)

Application.new.run
