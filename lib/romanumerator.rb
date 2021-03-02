class Adder
  def count(input)
    # Create a queue from the input string
    numerals = input.upcase.scan /I|V|U|X|L|C|D|M/
    # Sum the values of each element in the queue
    sum = 0
    numerals.each do |number|
      sum += 1 if number == 'I'
      sum += 5 if number == 'V' or number == 'U'
      sum += 10 if number == 'X'
      sum += 50 if number == 'L'
      sum += 100 if number == 'C'
      sum += 500 if number == 'D'
      sum += 1000 if number == 'M'
    end
    sum
  end
end
