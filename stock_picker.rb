def stock_picker(prices)
  i = 0
  best_difference = 0
  best_days = []
  while i < prices.size do
  j = prices.size - 1
    while j >= 0 do
      if j > i
        difference = prices[j] - prices[i]
        if difference > best_difference
          best_difference = difference
          best_days = [i, j]
        end
      end
      j -= 1
    end
    i += 1
  end
  print best_days
end







stock_picker([17,3,6,9,15,8,6,1,10])