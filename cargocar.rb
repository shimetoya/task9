class CargoCar < Car
    attr_accessor :car
  def initialize(car)
    @cars =[]
    @car=car	
  end
  def type
    :cargo
  end
  def add_car(cargo_train)
    @cars << @car 
    puts "Прицеплен вагон: #{@cars}"
  end
  def deduct_car(cargo_train)
    puts "Отцепляем вагон: #{@cars.last}"
    @cars.delete_at(-1)  
    cars = @cars
  end
end