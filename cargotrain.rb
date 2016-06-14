class CargoTrain < Train
	def initialize(type = CargoTrain, number, amount_cargo_car)
		@type = type
		@amount_cargo_car = amount_cargo_car		
	end
  def add_car
    @amount_cargo_car += 1
  end
end
