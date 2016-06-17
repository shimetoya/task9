
require_relative 'train'
require_relative 'route'
require_relative 'railwaystation'
require_relative 'cargotrain'
require_relative 'passangertrain'
require_relative 'car'
require_relative 'cargocar'
require_relative 'passangercar'


route = Route.new('First Station','Last Station')
rail = RailwayStation.new('Second Station')
car = Car.new
cargo_car = CargoCar.new(2)
#station = RailwayStation.new('Second Station')

#train
cargo_train = CargoTrain.new(11)
cargo_train.gather_speed
cargo_train.current_speed
cargo_train.brake
cargo_train.current_speed
cargo_train.amount_railway_carriage
cargo_train.operation_with_railway_carriage('+')
cargo_train.amount_railway_carriage
cargo_train.route=(route)

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
rail.get_train(cargo_train)
train = Train.new(123,'pass', 1)
rail.get_train(train)
rail.current_train
rail.sent_train(train)

rail.current_train
rail.current_train_with_type_gruz
rail.current_train_with_type_pass

train = Train.new(13,'gruz', 10)
rail.get_train(train)
rail.current_train
rail.current_train_with_type_gruz
rail.current_train_with_type_pass
rail.sent_train(train)
rail.current_train
