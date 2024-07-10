def stock_picker(prices)
  best_choice = [0, 1]
  for i in 0...prices.length do
    for j in (i + 1)...prices.length do
      if (prices[j] - prices[i]) > (prices[best_choice[1]] - prices[best_choice[0]])
        best_choice[0] = i
        best_choice[1] = j
      end
    end
  end   
  best_choice
end

prices = [17,3,6,9,15,8,6,1,10]

p stock_picker(prices)