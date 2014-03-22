require 'active_record'
require_relative 'contact'
require_relative 'application'
require_relative 'setup'

 
ActiveRecord::Base.logger = Logger.new(STDOUT)


Application.new.run
