class Train
  include Company
  attr_accessor :type
  attr_accessor :number
  attr_accessor :amount
  attr_accessor :station
  @@trains = []
  
  NUMBER_FORMAT = /^\w{3}[-]*\w{2}$/i
  class << self
    def find(number)
      train = @train
      find_trains = @@trains.select {|train| number == train.number}
	  find_trains
    end
  end
  def initialize(number, type, amount)
    @number = number
    @type = type
    @amount = amount
	validate!
    @speed = 0 
    @@trains << self
  end
  def gather_speed
    @speed = 60
  end
  def current_speed
    puts "Текущая скорость: #{@speed}"
  end
  def brake
    @speed = 0
  end
  def amount_railway_carriage
    puts "Количество вагонов: #{@cars}"
  end
   def route=(route)
    @route = route
    @cur_station_index = 0
    @current_station = route.stations[@cur_station_index]
    @current_station.get_train(self)
    puts "Поезд #{@number} #{@type} #{@amount} находится на станции: #{@current_station.station}"
  end
  def goto_next_station
    if @route.stations[@cur_station_index].station == @route.stations.last.station
      puts "Поезд находится на конечной станции: #{@current_station.station}!"
    else
      @current_station.sent_train(self)
      @cur_station_index += 1
      @current_station = @route.stations[@cur_station_index]
      @current_station.get_train(self)
      puts "Поезд переместился на станцию: #{@current_station.station}!"
    end
  end
  def show_station
    puts "Показать текущую станцию: #{@current_station.station}"
  end
  def show_prev_station
    if @current_station.station == @route.stations.first.station
      puts "Предыдущей станции в маршруте нет, поезд находится на первой станции: #{@current_station.station}!"
    else
      @prev_station = @route.stations[@cur_station_index - 1]
      puts "Показать предыдущую станцию: #{@prev_station.station}"
    end
  end
  def show_next_station
    if @current_station.station == @route.stations.last.station
      puts "Следующей станции в маршруте нет, поезд находится на конечной станции: #{@current_station.station}!"
    else
      @next_station = @route.stations[@cur_station_index + 1]
      puts "Показать следующую станцию: #{@next_station.station}"
    end
  end
  def add_car(car)
    puts "Прицеплен вагон #{car}"
	validate_car!(car)
    @cars << car #if self.type == car.type
  end
  def deduct_car(car)
    puts "Отцепляем вагон #{car}"
	validate_car!(car)
    @cars.delete(car) #if self.type == car.type
  end
  def valid?
    validate!
  rescue
    false
  end
  def validate!
    raise "Number can't be nil" if number.nil?
	raise "Number should be String at least 5 symbols length" if !number.instance_of? String
    raise "Number should be at least 5 symbols" if number.length < 5
    raise "Number has invalid format" if number !~ NUMBER_FORMAT
	raise "Type should be pass or cargo" if type.nil? || (type != 'cargo' && type != 'pass')
	true
  end
  def validate_car!(car)
    raise "Car can't be nil" if car.nil?
	raise "Wrong car type" if self.type != car.type
    true
  end
end