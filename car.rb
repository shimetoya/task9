class Car
    attr_accessor :car
  def initialize(car)
    @car = car
    @cars = []
  end 
  def add_car
    @cars << @car if self.type == @car.type
    puts "#{@cars}"
  end
  def deduct_car
    @cars.delete(car) if self.type == car.type
    puts "#{@cars}"
  end
end