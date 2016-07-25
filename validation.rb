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
    attr_accessor :types, :name, :arg, :val
    def validate!
      case
        when @types == 'presence' 
         (@name == nil || @name == "") ? raise('Name cant be empty') : return
        when @types == 'format' 
          @name !~ @arg ? raise('Arg must be format') : return
        when @types == 'type' 
          @arg != @name.class ? raise('Type must be') : return
      end
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
  attr_accessor :number, :name, :presence, :format, :type

  #validate :name, :types, :arg
  #validate :name, :format, FORMAT
  validate :name, :type, :arg
end

FORMAT = /^[a-z\d]{3}-?[a-z\d]{2}$/i

t = Test.new
# t.name = '118-gF'
# t.name = '1gF'
# t.types = 'format'
# t.arg = FORMAT
# t.validate!

# t.name = "yuio"
# t.name = ""
# t.types = 'presence'
# t.validate!

# t.name = "yuio"
t.name = 10
t.types = 'type'
t.arg = String
t.validate!
