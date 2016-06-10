class Train
attr_accessor :speed
attr_accessor :route
attr_accessor :stations
attr_accessor :name_of_station
attr_accessor :type
attr_accessor :name
	def initialize(name, type, amount_railway_carriage)
		puts "Номер поезда: #{name}, тип поезда: #{type}, количество вагонов у поезда: #{amount_railway_carriage}"
		@name = name
		@type = type
		@amount_railway_carriage = amount_railway_carriage
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
	def route
		puts "Поезд #{name} находится на станции: #{@current_station}"
	end
	def change_station(name_of_station)
		@current_station = name_of_station
		puts "Поезд переместился на станцию: #{@current_station}!"
	end
	def show_station(route)
		puts "Список всех станций: #{route.stations}"
	end
end