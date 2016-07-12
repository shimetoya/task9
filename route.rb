class Route
  attr_accessor :stations
  attr_accessor :station
  def initialize(first_station, last_station)
    #@first_station = RailwayStation.new(first_station)
    #@last_station = RailwayStation.new(last_station)
    @stations = [first_station, last_station]
  end
  def add_station(rail)
    validate!
	  @stations.insert(1, rail)
  end
  def delete_station(rail)
    @stations.delete(rail)
  end
  def show_stations
    for rail in @stations do
      print "#{rail.station}, " 
    end
    puts " "
  end
  def valid?
    validate!
  rescue
    false
  end
  protected
  def validate!
	  raise "Stationt should be instance of RailwayStation" if stations[0].instance_of? RailwayStation
    raise "Stationt should be instance of RailwayStation" if stations[-1].instance_of? RailwayStation
    true
  end
end