# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

# > stock_picker([17,3,6,9,15,8,6,1,10])
#   => [1,4]  # for a profit of $15 - $3 == $12

# Quick Tips:

# - You need to buy before you can sell
# - Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.

def stock_picker(dailyPrices)
    bestDays = []
    bestDifference = 0
    buyIndex = 0
    while buyIndex < dailyPrices.length
        dailyPrices.each_with_index do |price, sellIndex|
            if sellIndex > buyIndex && bestDifference < price - dailyPrices[buyIndex]
                bestDays = [buyIndex, sellIndex]
                bestDifference = price - dailyPrices[buyIndex]
            end
        end
        buyIndex += 1
    end
    p bestDays
end


stock_picker([1,17,3,2,6,9,15,8,6,2,10,27])