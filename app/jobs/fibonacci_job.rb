class FibonacciJob < ApplicationJob
  queue_as :default

  def perform(n)
    puts "I'm starting to compute..."
    result = fib(n)
    puts "The #{n}th element in the Fibonacci sequence is #{result}!"
  end

  private

  def fib(n)
    n < 2 ? n : fib(n - 1) + fib(n - 2)
  end
end
