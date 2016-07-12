require_relative 'module'
require_relative 'instance_counter'
require_relative 'train'
require_relative 'route'
require_relative 'railway_station'
require_relative 'cargo_train'
require_relative 'passanger_train'
require_relative 'car'
require_relative 'cargo_car'
require_relative 'passanger_car'


#route = Route.new('First Station','Last Station')
rail = RailwayStation.new('1 Station')
RailwayStation.instances
rail = RailwayStation.new('2 Station')
RailwayStation.instances
rail = RailwayStation.new('3 Station')
RailwayStation.instances

train = Train.new(1, 'cargo', 2)
Train.instances
train = Train.new(6, 'cargo', 25)
Train.instances
train = Train.new(7, 'cargo', 62)
Train.instances
train = Train.new(6, 'pass', 5)
Train.instances
Train.find(7)
puts Train.find(7)


route = Route.new('First Station','Last Station')
railFirst = RailwayStation.new('1 Station')
#RailwayStation.instances(rail)
railSecond = RailwayStation.new('2 Station')
#RailwayStation.instances(rail)
railThird = RailwayStation.new('3 Station')
#RailwayStation.instances(rail)
#train = Train.new(1, 'cargo', 2)
 #     puts train
#train = Train.new(6, 'cargo', 25)
 #     puts train
begin
  trainInvalidNumber = Train.new(6, 'pass', 5)
rescue RuntimeError => e
    puts e.inspect
end
begin
  trainInvalidNumberType = Train.new('asa', 'pass', 5)
rescue RuntimeError => e
    puts e.inspect
end
begin
  trainInvalidType = Train.new('633-21', 'cargoa', 62)
rescue RuntimeError => e
    puts e.inspect
end

pass_train = Train.new('633-21', 'pass', 5)
      puts pass_train
cargo_train = Train.new('a3321', 'cargo', 8)
      puts cargo_train	  
cargo_car = CargoCar.new
car = cargo_car
begin
  pass_train.add_car(car)
rescue RuntimeError => e
    puts e.inspect
end

begin
  route.add_station('invalidStation')
rescue RuntimeError => e
    puts e.inspect
end
route.add_station(railFirst)
route.show_stations
route.delete_station(railFirst)
route.show_stations
	  #Train.find(1)
#puts Train.find(1)

#route
#puts "Введите название станции:"
#station = gets.chomp
#route.new_station(station)
#route.add_station(railFirst)
#route.show_stations
#cargo_train.goto_next_station
#cargo_train.show_station
#cargo_train.show_next_station
#cargo_train.show_prev_station
#route.delete_station(railFirst)
#route.show_stations

=begin

#train
cargo_train = CargoTrain.new(11)
cargo_train.gather_speed
cargo_train.current_speed
cargo_train.brake
cargo_train.current_speed
train = cargo_train
cargo_train.amount_railway_carriage
cargo_train.route=(route)
rail.get_train(cargo_train)
cargo_car = CargoCar.new
car = cargo_car
cargo_train.add_car(car)
cargo_train.amount_railway_carriage
cargo_car = CargoCar.new
car = cargo_car
cargo_train.add_car(car)
cargo_train.amount_railway_carriage

passanger_train = PassangerTrain.new(88)
passanger_train.gather_speed
passanger_train.current_speed
passanger_train.brake
passanger_train.current_speed
train = passanger_train
passanger_train.amount_railway_carriage
passanger_train.route=(route)
rail.get_train(passanger_train)
passanger_car = PassangerCar.new
car = passanger_car
passanger_train.add_car(car)
passanger_train.amount_railway_carriage
passanger_car = PassangerCar.new
car = passanger_car
passanger_train.add_car(car)
passanger_train.amount_railway_carriage

#route
#puts "Введите название станции:"
#station = gets.chomp
#route.new_station(station)
route.add_station(rail)
route.show_stations
cargo_train.goto_next_station
cargo_train.show_station
cargo_train.show_next_station
cargo_train.show_prev_station
route.delete_station(rail)
route.show_stations

#railwaystation
rail.current_train
#rail.sent_train(passanger_train)
rail.current_train_with_type_gruz(cargo_train)
rail.current_train_with_type_pass(passanger_train)
rail.sent_train(cargo_train)
rail.current_train
=end
