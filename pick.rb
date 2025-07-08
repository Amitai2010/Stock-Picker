def stock_picker(arr)
    cheapest_idx = 0
    cheapest = arr[0]
    best_profit = 0

    for i in 1...arr.length
        sell = arr[i]
        profit = sell - cheapest

        if profit > best_profit
            best_profit = profit
            best_sell_idx = i
            best_buy_idx = cheapest_idx
        end

        if sell < cheapest
            cheapest = sell
            cheapest_idx = i
        end

    
    end

    return [best_buy_idx, best_sell_idx]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])