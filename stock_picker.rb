# Implement a method #stock_picker that takes in
# an array of stock prices, one for each hypothetical day.
# It should return a pair of days representing
# the best day to buy and the best day to sell.
# Days start at 0.

def stock_picker(array)
  max_gain = 0
  buy_day = 0
  sell_day = 0

  array.each.with_index do |buy_prize, idx_buy_day|
    array.each.with_index do |sell_prize, idx_sell_day|
      if idx_sell_day > idx_buy_day && sell_prize - buy_prize > max_gain
        max_gain = sell_prize - buy_prize
        buy_day = idx_buy_day
        sell_day = idx_sell_day

      end
    end
  end
  puts "The best day to buy stock #{buy_day} and day to sell stock
#{sell_day}  maximum gain #{max_gain} "
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
stock_picker([-1, 2, 244, 12, 43, -12, 334, 1])
stock_picker([0, 2, 3, 4, 5, 6, 7, 8, 9, 0, 2, 3, 4, 5, 6, 7, 8, 9])
stock_picker([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1])
