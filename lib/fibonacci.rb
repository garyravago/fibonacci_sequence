class Fibonacci

  def self.recursive_fib(n, i = 0,sequence = [0,1])
    return 0 if n == 0

    if n-1 == 0
      return sequence.last
    else
      sum = sequence[i] + sequence[i+1]
      sequence << sum
      i += 1
      self.recursive_fib(n-1, i, sequence)
    end
    
  end

  def self.iterative_fib(n)
    return n if n < 2
    
    sequence = [0,1]
    i = 0
    while n-1 != 0 do
      sum = sequence[i] + sequence[i+1]
      sequence << sum
      i += 1
      n -= 1
    end

    return sequence.last
  end
end

#puts "#{Fibonacci.iterative_fib(9)}" 
#puts "#{Fibonacci.recursive_fib(0)}"