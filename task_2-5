puts "Введите число:"
date = gets.to_i
puts "Введите месяц:"
month = gets.to_i
puts "Введите год:"
year = gets.to_i

#считаем количество високосных дней в введенном году
check_year = year
vis_day = 0 
	if  (check_year.modulo(4) == 0 && check_year.modulo(100) != 0 && month  > 3) || (check_year.modulo(400) == 0 && month  > 3)
		vis_day += 1    
	end

#считаем количество дней от начала года до введенного месяца
k = 0
m1 = month - 2
arr = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
while m1 >= 0 do
	m = k + arr[m1]
	arr[m1] = arr[m1 - 1]
	k = m
	m1 = m1 - 1
end

count = vis_day.to_i + k + date 
puts "Порядковый номер даты #{date.to_i}.#{month.to_i}.#{year.to_i}, начиная отсчет с начала года: #{count}"
