class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    words = str.split;
    # iterate through space seperated words array
    for i in words do
      # reset last_punct to empty string
      last_punct = ""
      # check if word is longer than 4 characters
      if i.length > 4
        # check for end punctuation if there is end punctuation preserve it and append to str
        if i[-1] =~ /[[:punct:]\s][^[:punct]\s]*\z/
          last_punct = i[-1]
        end
        # check if first letter of word to be replaced is capitalized
        if i[0] =~ /[[:upper:]]/ #.match(c)
          str = str.sub(i, "Marklar" + last_punct)
        else
          str = str.sub(i, "marklar" + last_punct)        
        end
      end
    end

    return str
    
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    # iterate through the fibonacci sequence up to and including the nth value
    # Determine if the current value is even and if it is add it to the total sum
    first_value = 0
    second_value = 1
    even_sum = 0;
    for i in (2..nth)
      new_sum = first_value + second_value 
      first_value = second_value 
      second_value = new_sum 
      if second_value % 2 == 0
        even_sum += new_sum
      end
    end
    return even_sum
  end

end
