module Accessor
  def att_accessor_with_history(*names)
    names.each do |name|
      var_name = "@#{name}".to_sym
      var_history = "@#{name}_history".to_sym
      define_method(name) { instance_variable_get(var_name) }
      define_method("#{name}=".to_sym) do |value| 
        instance_variable_set(var_name, value) 
        array = [var_history]
        array << var_name
      end
      define_method(var_history) { print array }
    end
  end

  def strong_attr_acessor(*names, *names.class)
    names.each do |name|
      var_name = "@#{name}".to_sym
      define_method(name) { instance_variable_get(var_name) }
      define_method("#{name}=".to_sym) do |value| 
        var_name.type == value.type ? instance_variable_set(var_name, value) : raise 'Variable types not identical'
      end  
      @@array << self
    end
  end
end

class Test
  extend Accessor
  att_accessor_with_history :my_attr, :a, :b, :c
#  strong_attr_acessor :s
end