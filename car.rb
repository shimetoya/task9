class Car
  def initialize()
   # puts "Станция называется: #{station}"
   # @station = station
  #  @current_station = station
    @cars = []
  end
  def get_train(train)
    puts "Пришел поезд: #{train.number} "
  end
  def current_train
    puts "Cписок всех поездов на станции, находящиеся в текущий момент:"
    for number in @trains do
      print "#{number.number}, #{number.type}, #{number.amount}, " 
    end
    puts " "
  end
end