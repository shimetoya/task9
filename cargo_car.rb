class CargoCar < Car
  def initialize(volume)
    @volume = volume
    @take_volumes = 0
    @@number += 1
  end

  def type
    :cargo
  end

  def take_volume(vol)
    if (@take_volumes + vol) <= @volume && (@take_volumes + vol) >= 0
      @take_volumes += vol
    else
      false
    end
  end

  def count_of_take_volumes
    @take_volumes
  end

  def count_of_free_volumes
    @volume - @take_volumes
  end

  def to_s
    <<-HEREDOC
    Номер вагона: #{@@number}, тип вагона: #{type}, количество
    свободного объема: #{@volume - @take_volumes}, количество
    занятого объема: #{@take_volumes}
    HEREDOC
  end
end
