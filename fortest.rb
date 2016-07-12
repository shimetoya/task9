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

route = Route.new('First Station','Last Station')
rail = RailwayStation.new('1 Station')

passanger_train = PassangerTrain.new('242-FF')
passanger_car = PassangerCar.new(10)
car = passanger_car

car.take_place
car.take_place
car.count_of_take_places
car.count_of_free_places


cargo_train = CargoTrain.new('118-gF')
cargo_car = CargoCar.new(100)
car = cargo_car

car.take_volume(11)
car.take_volume(2)
car.count_of_take_volumes
car.count_of_free_volumes


rail.each_train {|train| puts train}

passanger_train.each_car{|car| puts car}

который перебирает последовательно все станции и для каждой станции выводит список 
поездов в формате:

    Номер поезда, тип, кол-во вагонов
    А для каждого поезда на станции выводить список вагонов в формате:
    Номер вагона (можно назначать автоматически), тип вагона, кол-во свободных и занятых мест (для пассажирского вагона) или кол-во свободного и занятого объема (для грузовых вагонов).



