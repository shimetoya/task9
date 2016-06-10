class Railway_station
	@arr = Array.new
	def initialize(route, name_of_station, arr=0)
		if route.stations.include?(name_of_station)
			puts "Станция называется: #{name_of_station}"
			@current_station = name_of_station
		else
			puts "Такой станции в маршруте нет!"
		end
		@arr = []
	end
	def get_train(train)
		@count_p = 0
		@count_g = 0
		if train.type == 'pass'
			@count_p = 1
		elsif train.type == 'gruz'
			@count_g = 1
		else
			puts "Type's error!"
		end
		@arr << train.name
		puts "Пришел поезд: #{train.name}"
		puts "Тип поезда: #{train.type}"
	end
	def current_train
		@count_p
		@count_g
		puts "Cписок всех поездов на станции, находящиеся в текущий момент: #{@arr}"
	end
	def current_train_with_type
		@count_p 
		@count_g 
		puts "Количество грузовых поездов на станции на текущий момент: #{@count_g}"
		puts "Количество пассажирских поездов на станции на текущий момент: #{@count_p}"	
	end
	def sent_train(train)
		puts "Ушел поезд: #{train.name}"
		if train.type == 'pass'
			@count_p = 0
			@arr.delete(train.name)
		elsif train.type == 'gruz'
			@count_g = 0
			@arr.delete(train.name)
		else
			puts "Type's error!"
		end	
	end	
end
