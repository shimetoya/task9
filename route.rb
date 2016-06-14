class Route
	attr_accessor :stations
	attr_accessor :station
	def initialize(first_station, last_station)
		puts "Маршрут лежит от станции #{first_station} до станции #{last_station}."
		@first_station = RailwayStation.new(first_station)
		@last_station = RailwayStation.new(last_station)
		@stations = [@first_station, @last_station]
		
	end
	def new_station(station)
		@station = RailwayStation.new(station)
	end
	def add_station(station)
		@stations.insert(1, @station)
	end
	def delete_station(station)
		@stations.delete(@station)
	end
	def show_stations
			puts "Список всех станций:"
		for station in @stations do
    	print "#{station.station}, " 
		end
			puts " "
	end
end