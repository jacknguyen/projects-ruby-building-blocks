def caesar_cipher string, num
  words = string.split
  words.map! do |word|
    word.split('').map! do |letter|
      if ((65..90).include? letter.ord) || ((97..122).include? letter.ord)
        count = num
        letter = letter.ord
        while count > 0
          letter += 1
          if (letter == 91) || (letter == 123)
            letter -= 26
          end
          count -= 1
        end
        letter.chr
      else
        letter = letter
      end

    end
  end
  words.map! { |word| word.join('') }

  words = words.join(' ')
end
