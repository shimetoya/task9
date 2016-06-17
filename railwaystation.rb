class RailwayStation
  attr_accessor :station
  def initialize(station)
    puts "Станция называется: #{station}"
    @station = station
    @current_station = station
    @trains = []
  end
  def get_train(train)
    @train = train
    @trains << train
    puts "Пришел поезд: #{train.number} "
  end
  def current_train
    puts "Cписок всех поездов на станции, находящиеся в текущий момент:"
    for number in @trains do
      print "#{number.number}, #{number.type}, #{number.cars}, " 
    end
    puts " "
  end
  def current_train_with_type_pass(passanger_train)
    itarate_trains(passanger_train.type)
  end
  def current_train_with_type_gruz(cargo_train)
    itarate_trains(cargo_train.type)
  end
  
  def sent_train(train)
    puts "Ушел поезд: #{train.number}"
    @trains.delete(train)
  end
  
  protected
  #скрываем от доступа из вне метод itarate_trains, который проверяет тип поезда и выводит список поездов по типу
  def itarate_trains(type)
    @trains.each {|number| puts "Cписок всех поездов #{number.type} типа на станции, находящиеся в текущий момент: #{number.number}, #{number.type}, #{number.cars}" if number.type == type }
  end
end
