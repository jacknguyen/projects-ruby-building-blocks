def substrings strs, dict_arr
  words = strs.downcase.split(' ')
  output = Hash.new

  words.each do |word|

    dict_arr.each do |dic_def|
      if (word.include? dic_def) && output[dic_def] != nil
        output[dic_def] += 1
      elsif word.include? dic_def
        output[dic_def] = 1
      end
    end
  end

  output

end
