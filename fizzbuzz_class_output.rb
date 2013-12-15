require 'json'

class FizzBuzz
  
  def initialize max_num
    @max_num = max_num
  end
  
  def as_text
    fizz_buzz.join(', ')
  end
  
  def as_json
    JSON.generate(fizz_buzz)
  end

  def as_html
    "<ul\n" +
    fizz_buzz.map{ |ele| "\t<li>#{ele}</li>\n" }.join('') +
    "</ul\n"
  end

  def fizz_buzz
    1.upto(@max_num).map do |n|
      if n % 15 == 0
        "FizzBuzz"
      elsif n % 3 == 0
        "Fizz"
      elsif n % 5 == 0
        "Buzz"
      else 
        n
      end
    end
  end
end

fb = FizzBuzz.new(30)
puts fb.as_text
puts fb.as_json
puts fb.as_html
puts fb.fizz_buzz.join("\n")
