class PassangerTrain < Train
attr_accessor :type
attr_accessor :number
attr_accessor :amount
  def initialize(type=PassangerTrain, number, amount)
    @type = type
    @number = number
    @amount = amount
    @cars = []
  end
 # def add_train(passanger_train)
 # 	@trainlist << passanger_train
 #   puts "Создали поезд: #{passanger_train.number} => #{passanger_train.type}=> #{passanger_train.amount}"

  #end
  
  def add_car(passanger_train)
  @amount += 1
  end
  def deduct_car(passanger_train)
  @amount -= 1
  end
  protected
end
