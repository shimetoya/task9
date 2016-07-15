class CargoTrain < Train
  attr_accessor :number
  attr_accessor :cargo_car
  attr_accessor :car

  def initialize(number)
    super
    @number = number
  end

  def type
    :cargo
  end

  attr_reader :cars
end
