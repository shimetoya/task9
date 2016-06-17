require_relative 'train'
require_relative 'route'
require_relative 'railwaystation'
require_relative 'cargotrain'
require_relative 'passangertrain'
require_relative 'car'
require_relative 'passangercar'
require_relative 'cargocar'

@trains = []
@cars = []
@stations = []
end_program = false
while(!end_program)
puts "Выберите, что будем делать?"
puts "-- 1  - Добавить станцию."
puts "-- 2  - Добавить поезд."
puts "-- 3  - Добавить вагон."  
puts "-- 4  - Отцепить вагон."
puts "-- 5  - Поместить поезд на станцию."
puts "-- 6  - Просмотреть список станций."
puts "-- 7  - Просмотреть список поездов."
puts "-- 8  - Выход."

choice = gets.chomp.downcase
case choice
when '1'
	puts "Введите название станции:"
	station = gets.chomp
	rail = RailwayStation.new(station)
  @stations << rail
when '2'
 	puts "Введите номер поезда:"
	number = gets.chomp
	puts "Введите тип поезда ('PassangerTrain' / 'CargoTrain' == p / c):"
	type = gets.chomp
	puts "Введите количество вагонов в поезде:"
	@car = gets.chomp.to_i
  if type == 'p'
    @passanger_train = PassangerTrain.new(number)
    @trains << @passanger_train.number << @passanger_train.type << @car
    @cars << @car
    @train = @passanger_train
  elsif type == 'c'
    @cargo_train = CargoTrain.new(number)
    @trains << @cargo_train.number << @cargo_train.type << @car
    @cars << @car
    @train = @cargo_train
  else
    puts "Unknown type"
  end
when '3'
	if @cargo_train.type == :cargo
    puts "Сколько вагонов присоединить?"
    amount = gets.to_i
    cargo_car = CargoCar.new(amount)
    car = cargo_car
    @train.add_car(car)
    @trains << car.car
	elsif @passanger_train.type == :passanger
    puts "Сколько вагонов присоединить?"
    amount = gets.to_i
    passanger_car = PassangerCar.new(amount)
    car = passanger_train
    @train.add_car(car)
    @trains << car.car
  else
		puts "Type's error!"
	end	
when '4'
    @train.deduct_car(car)
    @trains.delete_at(-1)
when '5'
  if type == 'p'
    @cur_station_index = 0
    @current_station = @stations[@cur_station_index]
    puts "Поезд #{@train.number} #{@train.type} #{@amount} находится на станции: #{@current_station.station}"
	elsif type == 'c'
    @cur_station_index = 0
    @current_station = @stations[@cur_station_index]
    puts "Поезд #{@train.number} #{@train.type} #{@amount} находится на станции: #{@current_station.station}"	
  else
		puts "Unknown type"
	end
when '6'
  puts "Cписок всех станций:"
  for station in @stations do
    print "#{station.station}, " 
  end
  puts " "
when '7'
  puts "Cписок всех поездов на станции, находящиеся в текущий момент: #{@trains}"
when '8'
	end_program = true
else
	puts "Sorry, I didn't understand you."
	end_program = true
end
end