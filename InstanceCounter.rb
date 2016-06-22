module InstanceCounter 
  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end
  module ClassMethods
    attr_accessor :counte
    def instancess
      InstanceMethods.instances
    end
  end

  module InstanceMethods
    protected
    @@counte = 0
    def self.instances
      puts "Количество экземпляров класса: #{@@counte}"
    end
    def register_instance
      @@counte += 1
    end
  end
end 