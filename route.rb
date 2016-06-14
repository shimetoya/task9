class Route
	attr_accessor :stations
	attr_accessor :station
	def initialize(first_station, last_station)
		puts "Маршрут лежит от станции #{first_station} до станции #{last_station}."
		@first_station = RailwayStation.new(first_station)
		@last_station = RailwayStation.new(last_station)
		@stations = [@first_station, @last_station]
	end
	def add_station(rail)
		@stations.insert(1, rail)
		puts "Добавлена станция: #{rail.station}"
	end
	def delete_station(rail)
		@stations.delete(rail)
	end
	def show_stations
		puts "Список всех станций:"
		for rail in @stations do
			print "#{rail.station}, " 
		end
		puts " "
	end
end  