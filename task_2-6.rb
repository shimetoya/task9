hash = {}
loop do
  puts "Введите название товара:"
  product = gets.chomp.to_s
  if product.include?("стоп")
    puts "Вы ввели контрольное слово!"
    puts "#{hash}"
    vlh=Hash.new
    sum_all=0
	    hash.each {|k,v| key = k, vlh = v
		    sum = vlh[0] * vlh[1]
		    puts "Итоговая сумма за #{k} товар = #{sum}"
		    sum_all = sum_all + sum
    	}    
        puts "Итоговая сумма за все товары = #{sum_all}"
	break
  else 
  	puts "Введите цену за единицу:"
	price = gets.to_f
	puts "Введите количество купленного товара:"
	amt = gets.to_f
	hash [product] = [price,amt]

  end  
end
	