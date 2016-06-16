class CargoTrain < Train
  attr_accessor :number
  def initialize(number)
    @number = number
  end
  def type
    :cargo
  end
end
