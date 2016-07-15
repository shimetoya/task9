class Train
  attr_accessor :type
  attr_accessor :number
  attr_accessor :amount
  attr_accessor :station
  attr_accessor :cars
  @@trains = []
  @@counter = 0
  NUMBER_FORMAT = /^[a-z\d]{3}-?[a-z\d]{2}$/i
  def initialize(number)
    @number = number
    @speed = 0
    @cars = []
    validate!
    @@trains << self
  end
  class << self
    def find(number)
      @@trains.select { |train| number == train.number }[0]
    end
  end
  def gather_speed
    @speed = 60
  end

  def current_speed
    @speed
  end

  def brake
    @speed = 0
  end

  def amount_railway_carriage
    @cars
  end

  def route=(route)
    @route = route
    @cur_station_index = 0
    @current_station = route.stations[@cur_station_index]
    @current_station.get_train(self)
    @current_station.station
  end

  def goto_next_station
    if @route.stations[@cur_station_index].station == @route.stations.last.station
      @current_station.station
    else
      @current_station.sent_train(self)
      @cur_station_index += 1
      @current_station = @route.stations[@cur_station_index]
      @current_station.get_train(self)
      @current_station.station
    end
  end

  def show_station
    @current_station.station
  end

  def show_prev_station
    if @current_station.station == @route.stations.first.station
      @current_station.station
    else
      @prev_station = @route.stations[@cur_station_index - 1]
      @prev_station.station
    end
  end

  def show_next_station
    if @current_station.station == @route.stations.last.station
      @current_station.station
    else
      @next_station = @route.stations[@cur_station_index + 1]
      @next_station.station
    end
  end

  def add_car(car)
    brake
    validate_car!(car)
    @cars << car # if self.type == car.type
  end

  def deduct_car(car)
    brake
    validate_car!(car)
    @cars.delete(car) # if self.type == car.type
  end

  def each_car
    @cars.each { |car| yield(car) }
  end

  def valid?
    validate!
  rescue
    false
  end

  def validate!
    raise 'Number has invalid format' if number !~ NUMBER_FORMAT
    raise 'Number should be String' unless number.instance_of? String
    true
  end

  protected

  def validate_car!(car)
    raise "Car can't be nil" if car.nil?
    raise 'Wrong car type' if type != car.type
    true
  end
end
