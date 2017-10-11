require 'pry'
require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord

  def self.table_name
    binding.pry
    "#{self.to_s.class.downcase.pluralize}"
  end


  def self.column_names
  end
end
