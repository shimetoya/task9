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
      print "#{number.number}, #{number.type}, #{number.amount}, " 
    end
    puts " "
  end
  def current_train_with_type_pass
    itarate_trains('pass')
  end
  def current_train_with_type_gruz
    itarate_trains('gruz')
  end
  
  def sent_train(train)
    puts "Ушел поезд: #{train.number}"
    @trains.delete(train)
  end
  
  protected
  #скрываем от доступа из вне метод itarate_trains, который проверяет тип поезда и выводит список поездов по типу
  def itarate_trains(type)
    @trains.each {|number| puts "Cписок всех поездов " + type +" типа на станции, находящиеся в текущий момент: #{number.number}, #{number.type}" if number.type == type }
  end
end