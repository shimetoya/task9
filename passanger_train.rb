class PassangerTrain < Train
  attr_accessor :number
  def initialize(number)
    super
    @number = number
  end

  def type
    :passanger
  end

  attr_reader :cars
end
