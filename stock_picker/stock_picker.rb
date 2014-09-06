def stock_picker(array_of_prices)
	should_buy_index  = 0
	should_buy_value  = 99999999
	should_sell_index = 0
	should_sell_value = -99999999
	
	for i in 0..array_of_prices.count - 1
		if array_of_prices[i] < should_buy_value then
			should_buy_value = array_of_prices[i]
			should_buy_index = i
		end		
	end

	for i in should_buy_index..array_of_prices.count - 1
		if array_of_prices[i] > should_sell_value then
			should_sell_value = array_of_prices[i]
			should_sell_index = i
		end		
	end

	should_buy_index  += 1
	should_sell_index += 1

	Array.new([should_buy_index,should_sell_index]).inspect

end

puts stock_picker([99,22,34,55])
