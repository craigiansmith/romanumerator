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

class Converter
  def convert(input)
    adder = Adder.new
    numerals = input.upcase.scan /I|V|U|X|L|C|D|M/
    running_total = 0
    index = 0

    while index < numerals.length do
      s1 = adder.count(numerals[index])
      if (index + 1) < numerals.length then
        s2 = adder.count(numerals[index + 1])

        if s1 >= s2 then
          running_total += s1
          index += 1
        else
          running_total += s2 - s1
          index += 2
        end
      else
        running_total += s1
        index += 1
      end
    end
    
    running_total
  end
end
