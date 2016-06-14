require_relative 'train'
require_relative 'route'
require_relative 'railwaystation'
require_relative 'cargotrain'
require_relative 'passangertrain'
require_relative 'passangercar'
require_relative 'cargocar'
require_relative 'car'
train = Train.new(11, 3)
route = Route.new('First Station','Last Station')
rail = RailwayStation.new('Second Station')
@passanger_train = PassangerTrain.new(11, 3)

puts "What would you like to do?"
puts "-- Type 'add station' to add a station."
puts "-- Type 'add train' to add a train."
puts "-- Type 'add car' to add a car."
puts "-- Type 'deduct railway carriage' to deduct a railway carriage."
puts "-- Type 'stationlist' to display all stations."
puts "-- Type 'trainlist' to display all trains."
puts "-- Type 'exit' to exit."
end_program = false
while(!end_program)
choice = gets.chomp.downcase
case choice
when 'add station'
	puts "Введите название станции:"
	station = gets.chomp
	route.add_station(station)
when 'add train'
  puts "Введите номер поезда:"
	number = gets.chomp
	puts "Введите тип поезда ('PassangerTrain' / 'CargoTrain'):"
	type = gets.chomp.to_s
	puts "Введите количество вагонов в поезде:"
	amount = gets.chomp.to_i
	puts type
	if type == 'PassangerTrain'
		amount_passanger_car = amount
		@passanger_train = PassangerTrain.new(number, amount_passanger_car)
		@passanger_train.add_train(passanger_train)
	elsif type == 'CargoTrain'
		amount_cargo_car = amount
		cargo_train = CargoTrain.new(number, amount_cargo_car)
		train.add_train(train)
	end
when 'add car'
	  if train.instance_of? CargoTrain
	    cargo_train.add_car(CargoCar.new)
	  elsif train.instance_of? PassangerTrain
	  	passanger_train.add_car(PassangerCar.new)
	  else
	  	puts "Type's error!"
	  end	    	
when 'deduct car'
			@amount_railway_carriage -= 1
when 'stationlist'
  route.show_stations
when 'trainlist'
  @passanger_train.trainlist
when 'exit'
	end_program = true
else
  puts "Sorry, I didn't understand you."
	end_program = true
end
end