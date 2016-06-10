class Route
	#attr_accessor :speed
	#attr_accessor :route
	#attr_accessor :stations
	#attr_accessor :name_of_station
	@stations = Array.new
	def initialize(first_station, last_station, stations=0)
		puts "Маршрут лежит от станции #{first_station} до станции #{last_station}."
		@first_station = first_station
		@last_station = last_station
		@stations = [@first_station, @last_station]
	end
	def add_station(name_of_station)
		@name_of_station = name_of_station
		temp = @last_station
		@stations.delete(@last_station)
		@stations << @name_of_station
		@stations << temp
		puts @stations
	end
	def delete_station(name_of_station)
		@stations.delete(@name_of_station)
	end
	def show_stations
		puts "Список всех станций: #{@stations}"
	end
end