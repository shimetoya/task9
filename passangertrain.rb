class PassangerTrain < Train
attr_accessor :type
attr_accessor :number
attr_accessor :amount_passanger_car
  def initialize(type=PassangerTrain, number, amount_passanger_car)
    @type = type
    @number = number
    @amount_passanger_car = amount_passanger_car
    #  @trains = []
  end
  def add_train(passanger_train)
    #  @trains << passanger_train.number << passanger_train.type << passanger_train.amount_passanger_car
    @trains =[passanger_train.number, passanger_train.type, passanger_train.amount_passanger_car]
    puts "Пришел поезд: #{passanger_train.number} => #{passanger_train.type}=> #{passanger_train.amount_passanger_car}"
  end
  def trainlist
    puts "Cписок всех поездов на станции, находящиеся в текущий момент: #{@trains}"
  end
  def add_car
  @amount_passanger_car += 1
  end
  protected
end
