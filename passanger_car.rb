class PassangerCar < Car
  attr_accessor :cars
  @@count = 0
  def initialize(seats)
    @seats = seats
  end
  def type
    :passanger
  end
  def take_place
    if @seats != 0
      @seats -= 1
      @@count += 1
    else
      puts "No free places"
    end
  end
  def count_of_take_places
    @@count
  end
  def count_of_free_places
    @seats
  end
  def cars
    puts "Тип вагона: #{@type}, количество свободных мест: #{@seats}, количество занятых мест: #{@@count}"
  end
end