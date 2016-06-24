module InstanceCounter 
  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end
  module ClassMethods
    def instances
      counte = InstanceMethods.class_variable_get(:@@counte)
      puts "Количество экземпляров класса: #{counte}"
    end
  end

  module InstanceMethods
    protected
    @@counte=0 
    def register_instance
      @@counte +=1  
    end
  end
end 