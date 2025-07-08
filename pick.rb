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
    if profit == 0
        puts "You probably shouldent buy this time around..."
    end
    return "you should buy at day " + best_buy_idx.to_s + " and sell at day " + best_sell_idx.to_s + " for maximum profit :)"
end

arr = [17,3,6,9,15,8,6,1,10]
puts stock_picker(arr)