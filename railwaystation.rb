class RailwayStation
		attr_accessor :station
	def initialize(station)
			puts "Станция называется: #{station}"
			@station = station
			@current_station = station
			@trains = []
	end
	def get_train(train)
		@trains << train
		puts "Пришел поезд: #{train.number}"
	end
	def current_train
		puts "Cписок всех поездов на станции, находящиеся в текущий момент:"
			for number in @trains do
    	print "#{number.number}, #{number.type}, " 
		end
			puts " "
	end
	def current_train_with_type_pass
		@trains.each {|number| puts "Cписок всех поездов пассажирского типана станции, находящиеся в текущий момент:: #{number.number}, #{number.type}" if number.type == 'pass' }
	end
	def current_train_with_type_gruz(train)
		@trains.each {|number| puts "Cписок всех поездов грузового типа на станции, находящиеся в текущий момент:: #{number.number}, #{number.type}" if number.type == 'gruz' }
	end
	def sent_train(train)
		puts "Ушел поезд: #{train.number}"
		@trains.delete(train)
	end	  
end
