module InstanceCounter 
  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  module ClassMethods
    @@instances = 0
    def includ
    puts @@instances
    end
  end

  module InstanceMethods
    def includ
      puts @@instances
    end
    protected
    def include!
      @@instances += 1
      #register_instance
      #self.class.debug(log)
     # register_instance, который увеличивает счетчик кол-ва экземпляров класса 
     # и который можно вызвать из конструктора. При этом, данный метод не должен быть публичным.
    end
  end
end