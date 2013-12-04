class FizzBuzz
  
  def initialize max_num
    @max_num = max_num
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
puts fb.fizz_buzz
