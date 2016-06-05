hash = {}
loop do
  puts "Введите название товара:"
  product = gets.chomp
  if product.include?("стоп")
    puts "Вы ввели контрольное слово!"
    puts "#{hash}"
    sum_all=0
	    hash.each_pair do |key, value| 
        value.each_pair do |key, value|
		    sum = key.to_i * value.to_i
		    puts "Итоговая сумма за товар = #{sum}"
		    sum_all = sum_all + sum
    	end
      end   
        puts "Итоговая сумма за все товары = #{sum_all}"
	break
  else 
  	puts "Введите цену за единицу:"
	price = gets.to_f
	puts "Введите количество купленного товара:"
	amt = gets.to_f
	hash [product] = {price => amt}

  end  
end
	