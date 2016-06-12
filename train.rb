class Train
attr_accessor :type
attr_accessor :number
	def initialize(number, type, amount_railway_carriage)
		puts "Номер поезда: #{number}, тип поезда: #{type}, количество вагонов у поезда: #{amount_railway_carriage}"
		@number = number
		@type = type
		@amount_railway_carriage = amount_railway_carriage
		@speed = 0
	end
	def gather_speed
		@speed = 60
	end
	def current_speed
		puts "Текущая скорость: #{@speed}"
	end
	def brake
		@speed = 0
	end
	def amount_railway_carriage
		puts "Количество вагонов: #{@amount_railway_carriage}"
	end
	def operation_with_railway_carriage(key)
		if @speed == 0
			if key == '+'
				@amount_railway_carriage += 1
			elsif key == '-'
				@amount_railway_carriage -= 1
			end
		else
			puts "Невозможно отцепить вагон, пока поезд движется!"	
		end
	end
	def route=(route)
		@route = route
		@cur_station_index = 0
		@current_station = route.stations[@cur_station_index]
		puts "Поезд #{@number} находится на станции: #{@current_station}"
	end
	def goto_next_station
		if route.stations[@cur_station_index] == route.stations.last
			puts "Поезд находится на конечной станции: #{@current_station}!"
		else
			@cur_station_index += 1
			@current_station = route.stations[@cur_station_index]
			puts "Поезд переместился на станцию: #{@current_station}!"
		end
	end
	def show_station(route)
		puts "Список всех станций: #{route.stations}"
	end
end