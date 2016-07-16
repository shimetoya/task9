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
    if @take_seats < @seats
      @take_seats += 1
    else
      false
    end
  end

  def count_of_take_places
    @take_seats
  end

  def count_of_free_places
    @seats - @take_seats
  end

  def to_s
    "Номер вагона: #{@@number}, тип вагона: #{type},
    количество свободных мест: #{@seats - @take_seats},
    количество занятых мест: #{@take_seats}"
  end
end
