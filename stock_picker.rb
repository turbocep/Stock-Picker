def stock_picker(prices)
  best_choice = [0, 1]
  prices.each_with_index do | price, i |
    break if i == prices.length - 1
    for j in (i + 1)..(prices.length - 1) do
      if prices[j] - prices[i] > prices[best_choice[1]] - prices[best_choice[0]]
        best_choice[1] = i
        best_choice[0] = j
      end
    end
  end
  best_choice
end

prices = [17,3,6,9,15,8,6,1,10]

p stock_picker(prices)