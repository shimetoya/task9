class PassangerTrain < Train
attr_accessor :number
  def initialize(number)
    @number = number
  end
  def type
    :passanger
  end
end
