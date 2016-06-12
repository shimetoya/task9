class RailwayStation
	@trains = Array.new
	def initialize(station)
			puts "Станция называется: #{station}"
			@station = station
			@current_station = station
	end
	def get_train(train)
		@trains = [train]
		puts @trains
		puts "Пришел поезд: #{train.number} => #{train.type}"
	end
	def current_train
		puts "Cписок всех поездов на станции, находящиеся в текущий момент: #{@trains}"
	end
	def current_train_with_type_pass(train)
		@trains.select{|t| puts "#{train.number}, #{train.type}" if t.type == 'pass' }
	end
	def current_train_with_type_gruz(train)
		@trains.select{|t| puts "#{train.number}, #{train.type}" if t.type == 'gruz' }
	end
	def sent_train(train)
		puts "Ушел поезд: #{train.number}"
		@trains.delete(train)
	end	
end
