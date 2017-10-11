require 'pry'
require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord

  def self.table_name
    "#{self.to_s.downcase.pluralize}"
  end

  def initialize

  end

  def self.column_names
    DB[:conn].results_as_hash = true
    sql = <<-SQL
      "PRAGMA table_info('#{self.table_name}')"
    SQL
    table_info = DB[:conn].execute(sql)
    column_names = []
    table_info.each do |column|
      binding.pry
      column_names << column["name"]
    end
  end



end  #  End of Class
