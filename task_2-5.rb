puts "Введите число:"
date = gets.to_i
puts "Введите месяц:"
month = gets.to_i
puts "Введите год:"
year = gets.to_i

#Проверяем  год на високосный
check_year = year
vis_day = 0 
	if  (check_year.modulo(4) == 0 && check_year.modulo(100) != 0 && month  > 2) || (check_year.modulo(400) == 0 && month > 2)
		vis_day += 1 
	end

#считаем количество дней от начала года до введенного месяца
all_days = 0
month = month - 2 # -1 так как введенный месяц мы не считаем и еще -1 так как в массиве отсчет с 0
arr = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
while month >= 0 do
	all_days = all_days + arr[month]
	arr[month] = arr[month - 1]
	month = month - 1
end

count = vis_day.to_i + all_days + date 
puts "Порядковый номер равен: #{count}"
