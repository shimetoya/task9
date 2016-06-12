class Route
	@stations = Array.new
	def initialize(first_station, last_station)
		puts "Маршрут лежит от станции #{first_station} до станции #{last_station}."
		@first_station = first_station
		@last_station = last_station
		@stations = [@first_station, @last_station]
	end
	def add_station(station)
		@stations.insert(1, station)
	end
	def delete_station(station)
		@stations.delete(station)
	end
	def show_stations
		puts "Список всех станций: #{@stations}"
	end
end