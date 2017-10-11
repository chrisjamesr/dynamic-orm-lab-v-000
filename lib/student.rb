require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord



  def initialize(options={})
    super
      options.each do |property, value|
      self.send("#{property}=", value)
    end
  end

end  # End of Class
