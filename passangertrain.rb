class PassangerTrain < Train
attr_accessor :number
  def initialize(number)
    @number = number
    @cars = []  
  end
  def type
    :passanger
  end
  def amount_railway_carriage
    puts "Количество вагонов: #{passanger_car.car}"
  end
end
