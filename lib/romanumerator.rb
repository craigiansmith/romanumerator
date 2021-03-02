class Adder
  def count(input)
    # Create a queue from the input string
    numerals = input.scan /I|V|U|L|C|D|M/
    # Sum the values of each element in the queue
    sum = 0
    numerals.each do |number|
      sum += 1 if number == 'I'
      sum += 5 if number == 'V' or number == 'U'
    end
    sum
  end
end
