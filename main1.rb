require_relative 'train'
require_relative 'route'
require_relative 'railway_station'
require_relative 'cargo_train'
require_relative 'passanger_train'
require_relative 'car'
require_relative 'passanger_car'
require_relative 'cargo_car'

trains = []
@cars = []
stations = []
end_program = false
until end_program
  puts 'Выберите, что будем делать?'
  puts '-- 1  - Добавить станцию.'
  puts '-- 2  - Добавить поезд.'
  puts '-- 3  - Добавить вагон.'
  puts '-- 4  - Отцепить вагон.'
  puts '-- 5  - Поместить поезд на станцию.'
  puts '-- 6  - Просмотреть список станций.'
  puts '-- 7  - Просмотреть список поездов.'
  puts '-- 8  - Просмотреть список вагонов.'
  puts '-- 9  - Просмотреть список поездов на станции.'
  puts '-- 10  - Занять место или объем в вагоне.'
  puts '-- 11  - Выход.'

  choice = gets.chomp.downcase
  case choice
  when '1'
    puts 'Введите название станции:'
    station = gets.chomp
    rail = RailwayStation.new(station)
    stations << rail
  when '2'
    puts 'Введите номер поезда:'
    number = gets.chomp
    puts "Введите тип поезда ('PassangerTrain' / 'CargoTrain' == p / c):"
    type = gets.chomp
    if type == 'p'
      @train = PassangerTrain.new(number)
      trains << @train
    elsif type == 'c'
      @train = CargoTrain.new(number)
      trains << @train
    else
      puts 'Unknown type'
    end
  when '3'
    if @train.type == :cargo
      puts 'Введите объем вагона:'
      volume = gets.chomp
      car = CargoCar.new(volume)
      @cars << car
      @train.add_car(car)
    elsif @train.type == :passanger
      puts 'Введите количество мест:'
      seats = gets.chomp
      car = PassangerCar.new(seats)
      @cars << car
      @train.add_car(car)
    else
      puts "Type's error!"
    end
  when '4'
    @train.deduct_car(car) if @train.type == car.type
  when '5'
    if type == 'p'
      @cur_station_index = 0
      @current_station = stations[@cur_station_index]
      puts "Поезд № #{@train.number} типа: #{@train.type}
       находится на станции: #{@current_station.station}"
    elsif type == 'c'
      @cur_station_index = 0
      @current_station = stations[@cur_station_index]
      train = @train
      @current_station.get_train(train)
      puts "Поезд № #{@train.number} типа: #{@train.type}
       находится на станции: #{@current_station.station}"
    else
      puts 'Unknown type'
    end
  when '6'
    puts 'Cписок всех станций:'
    stations.each { |s| puts s.station }
  when '7'
    puts "Cписок всех поездов на станции,
     находящиеся в текущий момент: #{trains}"
  when '8'
    if car.type == :cargo
      puts "Cписок всех вагонов на станции,
       находящиеся в текущий момент: #{@cars}"
    elsif car.type == :passanger
      puts "Cписок всех вагонов на станции,
       находящиеся в текущий момент: #{@cars}"
    else
      puts "Type's error!"
    end
  when '9'
    RailwayStation.station_with_train
  when '10'
    if car.type == :cargo
      puts 'Введите объем вагона, который необходимо занять:'
      vol = gets.to_i
      car.take_volume(vol)
    elsif @car.type == :passanger
      car.take_place
    else
      puts "Type's error!"
    end
  when '11'
    end_program = true
  else
    puts "Sorry, I didn't understand you."
    end_program = true
  end
end
