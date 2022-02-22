# Stock Picker

def stock_picker(prices)
  max_profit = 0
  buy_day = 0
  sell_day = 0    
  buy_sell_day = [0,0]
  min_price = prices[0]
  min_index = 0
 

  prices.each_with_index do |price, index|
    if price < min_price
      min_price = price
      min_index = index
      next
    end
    if price - min_price > max_profit
      max_profit = price - min_price
      buy_day = min_index
      sell_day = index
    end
  end
  puts "\nBuy on day #{buy_day} and sell on day #{sell_day} for $#{max_profit}"
  p [buy_day, sell_day]
end

stock_picker([17,3,6,9,15,8,6,1,10])

