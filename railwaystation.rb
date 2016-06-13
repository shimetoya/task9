class RailwayStation
		attr_accessor :station
	def initialize(station)
			puts "Станция называется: #{station}"
			@station = station
			@current_station = station
			@trains = []
	end
	def get_train(train)
		@trains << train.number << train.type
		puts "Пришел поезд: #{train.number} => #{train.type}"
	end
	def current_train
		puts "Cписок всех поездов на станции, находящиеся в текущий момент: #{@trains}"
	end
	def current_train_with_type_pass(train)
		@trains.select{|type| puts "#{train.number}, #{train.type}" if type == 'pass' }
	end
	def current_train_with_type_gruz(train)
		@trains.select{|type| puts "#{train.number}, #{train.type}" if type == 'gruz' }
	end
	def sent_train(train)
		puts "Ушел поезд: #{train.number}"
		@trains.delete(train.number)
		@trains.delete(train.type)
	end	
end
