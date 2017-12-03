require_relative '../lib/fibonacci'

describe "#recursive_fib" do
  
  it "outputs the nth digit of the fibonacci_sequence" do
    fibonacci_sequence = [0,1,1,2,3,5,8,13,21,34]
    n = fibonacci_sequence.length-1

    0.upto(n) do |number|
      nth_digit = fibonacci_sequence[number]

      result = Fibonacci.recursive_fib(number)
      
      expect(result).to eq(nth_digit)
    end  
  end

end

describe "#iterative_fib" do
  
  it "outputs the nth digit of the fibonacci_sequence" do
    fibonacci_sequence = [0,1,1,2,3,5,8,13,21,34]
    n = fibonacci_sequence.length-1

    0.upto(n) do |number|
      nth_digit = fibonacci_sequence[number]

      result = Fibonacci.iterative_fib(number)
      
      expect(result).to eq(nth_digit)
    end  
  end

end