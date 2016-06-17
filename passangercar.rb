class PassangerCar < Car
    attr_accessor :car
  def initialize(car)
    @car=car 		
  end
  def type
    :passanger
  end
end