class PassangerCar < Car
  attr_accessor :cars
  def initialize(seats)
    @seats = seats
    @take_seats = 0
    @@number += 1
  end

  def type
    :passanger
  end

  def take_place
    if @take_seats < @seats.to_i
      @take_seats += 1
    else
      puts 'Error'
    end
  end

  def count_of_take_places
    @take_seats
  end

  def count_of_free_places
    @seats - @take_seats
  end

  def cars
    puts "Номер вагона: #{@@number}, тип вагона: #{type},
    количество свободных мест: #{@seats.to_i - @take_seats},
    количество занятых мест: #{@take_seats}"
  end
end
