class PassangerTrain < Train
attr_accessor :number
  def initialize(number)
    @number = number
    @cars = []  
  end
  def type
    :passanger
  end
   def cars
    @cars
  end
end
