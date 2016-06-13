class Route
	attr_accessor :stations	
	def initialize(first_station, last_station)
		puts "Маршрут лежит от станции #{first_station} до станции #{last_station}."
		@first_station = RailwayStation.new(first_station)
		@last_station = RailwayStation.new(last_station)
		@stations = [@first_station, @last_station]
	end
	def add_station(station)
		station = RailwayStation.new(station)
		@stations.insert(1, station)
	end
	def delete_station(station)
		@stations.delete(station)
	end
	def show_stations(rail)
		puts "Список всех станций:#{@stations}" 		
	end
end