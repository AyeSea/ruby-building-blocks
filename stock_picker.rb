=begin
This method takes in an array of prices as an argument and returns a pair of days
representing the best day to buy and the best day to sell. Days start at 0. Note that
the buy day should always be before the sell day (you need to buy before you can sell).

Our method will return the pair [nil, nil] in cases where the lowest day is the last day,
the highest day is the first day, or both.
=end

def stock_picker(arr_prices)
	max_profit = 0
	buy_day = nil
	sell_day = nil

	arr_prices.each_index do |i|
		counter = 1

		while i + counter < arr_prices.size && arr_prices[i] < arr_prices[i + counter]
			profit = arr_prices[i + counter] - arr_prices[i]
				
			if profit > max_profit
				max_profit = profit
				buy_day = i
				sell_day = i + counter
			end

			counter += 1
		end
	end

	p [buy_day, sell_day]
end

stock_picker([17,3,6,9,15,8,6,1,10])
#Should return [1,4].