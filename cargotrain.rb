class CargoTrain < Train
  attr_accessor :number
  attr_accessor :cargo_car
  attr_accessor :car

  def initialize(number)
    @number = number
    @cars = []
  end
  def type
    :cargo
  end
  def cars
    @cars
  end
end
