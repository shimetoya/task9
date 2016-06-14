
require_relative 'train'
require_relative 'route'
require_relative 'railwaystation'
require_relative 'cargotrain'
require_relative 'passangertrain'

route = Route.new('First Station','Last Station')
rail = RailwayStation.new('Second Station')
#station = RailwayStation.new('Second Station')

#train
train = Train.new(11,'pass', 3)
train.gather_speed
train.current_speed
train.brake
train.current_speed
train.amount_railway_carriage
train.operation_with_railway_carriage('+')
train.amount_railway_carriage
train.route=(route)

#route
#puts "Введите название станции:"
#station = gets.chomp
#route.new_station(station)
route.add_station(rail)
route.show_stations
train.goto_next_station
train.show_station
train.show_next_station
train.show_prev_station
route.delete_station(rail)
route.show_stations

#railwaystation
rail.get_train(train)
train = Train.new(123,'pass', 1)
rail.get_train(train)
rail.current_train
rail.sent_train(train)

rail.current_train
rail.current_train_with_type_gruz(train)
rail.current_train_with_type_pass

train = Train.new(13,'gruz', 10)
rail.get_train(train)
rail.current_train
rail.current_train_with_type_gruz(train)
rail.current_train_with_type_pass
rail.sent_train(train)
rail.current_train
