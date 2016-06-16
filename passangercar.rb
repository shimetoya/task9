class PassangerCar < Car
    attr_accessor :car
  def initialize(car)
    @cars =[]
    @car=car 		
  end
  def type
    :passanger
  end
  def add_car(passanger_train)
    @cars << @car 
    puts "Прицеплен вагон: #{@cars}"
  end
   def deduct_car(passanger_train)
    puts "Отцепляем вагон: #{@cars.last}"
    @cars.delete_at(-1)  
    cars = @cars
  end
end