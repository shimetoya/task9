module Validation

  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  module ClassMethods
    def validate(name, types, *arg)
      @name = name
      @types = types
      @arg = arg
    end
  end

  module InstanceMethods
    def validate! 
      @types == presence ? (@name != nil || @name != "") : raise('Name cant be empty')
      @types == format ? @arg == FORMAT : raise('Arg must be format')
      @types == type ? @types == @name.class : raise('Type must be')
    end

    def valid?
      validate!
    rescue
      false
    end
  end
end

class Test
  include Validation
  attr_accessor :number, :name
  FORMAT = /A-Z{0,3}/

  validate :name, :presence
  validate :number, :format, FORMAT
  validate :name, :type, String
end

t = Test.new
t.number = 7
t.valid?


