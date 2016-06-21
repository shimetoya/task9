#include Company
#include InstanceCounter
require_relative 'train'
require_relative 'route'
require_relative 'railwaystation'
require_relative 'cargotrain'
require_relative 'passangertrain'
require_relative 'car'
require_relative 'cargocar'
require_relative 'passangercar'
require_relative 'module'
require_relative 'InstanceCounter'
include Company
include InstanceCounter

route = Route.new('First Station','Last Station')
rail = RailwayStation.new('Second Station')
car = Car.new

#station = RailwayStation.new('Second Station')

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
