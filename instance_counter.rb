module InstanceCounter 
  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end
  module ClassMethods
    def instances(rail)
      counte = @counte
      puts "Количество экземпляров класса: #{rail.counte}"
    end
  end

  module InstanceMethods
    protected
    @@counte=0 
    def register_instance
      @counte = @@counte
      @@counte += 1
    end
  end
end 