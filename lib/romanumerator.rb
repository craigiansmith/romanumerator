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
    prior = 0 

    numerals.each_with_index do |number, index| 
      number = adder.count(number)
      case
      when prior == 0 then
        prior += number
      when prior == number then
        running_total += number
        prior += number
      when prior < number then
        running_total += (number - prior)
        prior = 0
      when prior > number then
        if index < (numerals.length - 1) and
           number < adder.count(numerals[index + 1]) then
          running_total += prior
          prior = number
        else
          running_total += (number + prior)
          prior = number
        end
      end
    end

    running_total
  end
end
