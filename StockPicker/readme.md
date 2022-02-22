# Stock Picker

<!-- original approach was this -->

<!-- def stock_picker(prices)
    max_profit = 0
    buy_day = 0
    sell_day = 0
    buy_sell_day = [0,0]

    min_price = prices[0]
    min_index = 0


  prices.each_with_index do |buy_price, buy_day| # buy_price is the price of the stock on the buy day
    prices.each_with_index do |sell_price, sell_day| # sell_price is the price of the stock on the sell day
        profit = sell_price - buy_price
        if profit > max_profit && buy_day < sell_day # if the profit is greater than the current max profit
            max_profit = profit # set the max profit to the new profit
            buy_sell_day = [buy_day, sell_day] # set the buy and sell day to the new buy and sell day
      end
    end
  end

    puts "\nBuy on day #{buy_day} and sell on day #{sell_day} for $#{max_profit}"
    p buy_sell_day
  end
  stock_picker([17,3,6,9,15,8,6,1,10]) -->
