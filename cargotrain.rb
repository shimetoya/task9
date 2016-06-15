class CargoTrain < Train
  attr_accessor :type
  attr_accessor :number
  attr_accessor :amount
  def initialize(type = CargoTrain, number, amount)
    @type = type
    @amount = amount		
    @number = number
   # @trains = []
  end
  #def add_train(cargo_train)
    #@trainlist << cargo_train
  #  puts "Создали поезд: #{cargo_train.number} => #{cargo_train.type}=> #{cargo_train.amount}"
#  end
  def add_car(cargo_train)
    @amount += 1
  end
  def deduct_car(cargo_train)
    @amount -= 1
  end

end
