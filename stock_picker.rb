def stock_picker(prices)
  
  max_profit=0
  buy_day,sell_day=nil
  
  prices.each do |buy|
    prices.each do |sell|
	  if (sell-buy) > max_profit && prices.index(buy)<prices.index(sell)
	    max_profit=sell-buy
		sell_day=prices.index(sell)
		buy_day=prices.index(buy)
		end
	  end
	end
	if buy_day == nil
	  print "No profitable situation exists"
	else
	  print "Buy on day #{buy_day} and sell on day #{sell_day} for a profit of #{max_profit}"
	 
  end
end
stock_picker([17,3,6,9,15,8,6,1,10])

