class CargoCar < Car
  @@count = 0
  def initialize(volume)
    @volume = volume
  end
  def type
    :cargo
  end
  def take_volume(vol)
    if @volume !=0
      @volume -= vol
      @@count += vol
    else
      puts "No free volume"
    end
  end
  def count_of_take_volumes
    puts @@count
  end
  def count_of_free_volumes
    puts @volume
  end
end