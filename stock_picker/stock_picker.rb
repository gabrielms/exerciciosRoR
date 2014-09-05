def stock_picker(array_of_prices)
	
	lower_price = array_of_prices.bsearch{|x| x <= x}

	# puts lower_price

	lower_price_index  = array_of_prices.index(lower_price)
	
	a = array_of_prices.combination(2).to_a
	
	puts a.inspect
	a.each do |a|
		better_choice = 
		puts a.at(0) - a.at(1)
	end

end

stock_picker([2,1,3,4])
