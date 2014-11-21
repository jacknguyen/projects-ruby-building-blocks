def stock_picker array
  @profit = 0
  @low = 0
  @high = 0

  array.each_with_index do |val, ind|
    sell = array.slice(ind,array.length-1).max # finding the max number for remainder of days

    if (sell - val) > @profit
      @profit = sell - val
      @low = ind
      @high = array.slice(ind,array.length-1).index(sell) + array.slice(0,ind).length
    end
  end

  [@low,@high]
end
