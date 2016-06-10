class RailwayStation
attr_accessor :speed
attr_accessor :route
attr_accessor :stations
attr_accessor :name_of_station
attr_accessor :name
attr_accessor :type
	@trains = Hash.new
	def initialize(route, name_of_station, arr=0)
		if route.stations.include?(name_of_station)
			puts "Станция называется: #{name_of_station}"
			@current_station = name_of_station
		else
			puts "Такой станции в маршруте нет!"
		end
	end
	def get_train(train)
		@count_p = 0
		@count_g = 0
		if train.type == 'pass'
			@count_p += 1
		elsif train.type == 'gruz'
			@count_g += 1
		else
			puts "Type's error!"
		end
		@trains = {train.name => train.type}
		puts "Пришел поезд: #{train.name} => #{train.type}"
	end
	def current_train
		puts "Cписок всех поездов на станции, находящиеся в текущий момент: #{@trains}"
	end
	def current_train_with_type_pass(train)
		@trains.each_pair  {|key, value| puts "#{train.name}, #{train.type}" if value == 'pass'}
		puts "Количество пассажирских поездов на станции на текущий момент: #{@count_p}"	
	end
	def current_train_with_type_gruz(train)
		@trains.each_pair  {|key, value| puts "#{train.name}, #{train.type}" if value == 'gruz'}
		puts "Количество грузовых поездов на станции на текущий момент: #{@count_g}"
	end
	def sent_train(train)
		puts "Ушел поезд: #{train.name}"
		if train.type == 'pass'
			@count_p -= 1
			@trains.delete(train.name)
		elsif train.type == 'gruz'
			@count_g -= 1
			@trains.delete(train.name)
		else
			puts "Type's error!"
		end	
	end	
end
