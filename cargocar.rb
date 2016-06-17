class CargoCar < Car
  attr_accessor :car
  def initialize(car)
    @car=car 
  end
  def type
    :cargo
  end
end