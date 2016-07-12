class RailwayStation
  attr_accessor :station
  attr_accessor :counte
  include InstanceCounter
  @@count = []
  @@counter = 0
  def self.all
    @@count
  end
  def initialize(station)
    @station = station
    @current_station = station
    @trains = []
    validate!
    @@count << station
    register_instance
  end
  def get_train(train)
    @train = train
    @trains << train
  end
  def current_train
    for number in @trains do
      print "#{number.number}, #{number.type}, #{number.cars}, " 
    end
    puts " "
  end
  def current_train_with_type_pass
    itarate_trains(:pass)
  end
  def current_train_with_type_gruz
    itarate_trains(:cargo)
  end
  def sent_train(train)
    @trains.delete(train)
  end
  def valid?
    validate!
  rescue
    false
  end
  def validate!
    raise "Station should be String" if !station.instance_of? String
    raise "Station can't be < 3" if station.length < 3
    true
  end
  #скрываем от доступа из вне метод itarate_trains, который проверяет тип поезда и выводит список поездов по типу
  protected
  def itarate_trains(type)
    @trains.each {|number| number if number.type == type }
  end
end