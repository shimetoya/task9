module Accessor
  def att_accessor_with_history(*names)
    names.each do |name|
      var_name = "@#{name}".to_sym
      var_history = "@#{name}_history".to_sym
      define_method(name) { instance_variable_get(var_name) }
      define_method("#{name}=".to_sym) do |value|  
        instance_variable_set(var_history, []) unless instance_variable_get(var_history)
        instance_variable_get(var_history) << value
        instance_variable_set(var_name, value)
      end
      define_method("#{name}_history".to_sym) {instance_variable_get(var_history)}
    end
  end

  def strong_attr_acessor(name, class_name)
    var_name = "@#{name}".to_sym
    define_method(name) { instance_variable_get(var_name) }
    define_method("#{name}=".to_sym) do |value|
      value.instance_of?(class_name) ? instance_variable_set(var_name, value) : raise('Variable types not identical')
    end  
  end
end

class Test
  extend Accessor
  att_accessor_with_history :my_attr, :a, :b, :c
  strong_attr_acessor :s, Symbol
end

t = Test.new
puts t
t.a = 7
t.a = 3
puts t.a_history

t.s = :d
puts t.s
puts t.instance_variables
puts t.instance_variable_get(:@s)
