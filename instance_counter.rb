module InstanceCounter 
  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
    @@counter = 1
    base.class_variable_set(:@@counter, 0)
  end
  module ClassMethods
    def instances
      counter = InstanceCounter.class_variable_get(:@@counter)
      puts "Количество экземпляров класса: #{counter}"
    end
  end

  module InstanceMethods
    protected
    def register_instance
      @@counter = InstanceCounter.class_variable_get(:@@counter)
      @@counter += 1
      self.class.class_variable_set(:@@counter, @@counter)
    end
  end
end 