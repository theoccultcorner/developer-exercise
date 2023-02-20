class Exercise

  def self.marklar(str)
    words = str.split(' ')
    words.map! do |word|
      if word.length > 4
        if /[[:upper:]]/.match?(word[0])
          "Marklar#{word[-1].match?(/\p{Punct}/) ? word[-1] : ''}"
        else
          "marklar#{word[-1].match?(/\p{Punct}/) ? word[-1] : ''}"
        end
      else
        word
      end
    end
    words.join(' ')
  end

  def self.even_fibonacci(nth)
    return 0 if nth <= 0

    fibs = [1, 1]
    even_sum = 0

    while fibs.length < nth
      fibs << fibs[-1] + fibs[-2]
    end

    fibs.each do |num|
      even_sum += num if num.even?
    end

    even_sum
  end

end
