# frozen_string_literal: true

def fibonnaci_sequence(num)
  fib_nums = []

  Range.new(1, num).each do |fib_num|
    if fib_num == 1
      fib_nums << 0
    elsif [2, 3].include?(fib_num)
      fib_nums << 1
    else
      second_to_last_num = fib_nums.length - 2
      last_num = fib_nums.length - 1

      fib_nums << fib_nums[second_to_last_num] + fib_nums[last_num]
    end
  end

  puts "The fibonnaci numbers from 1 to #{num} are:"
  p fib_nums
end

fibonnaci_sequence 8

def recursive_fibonacci_sequence(num)
  if num == 1
    0
  elsif num == 2
    1
  else
    recursive_fibonacci_sequence(num - 2) + recursive_fibonacci_sequence(num - 1)
  end
end

puts recursive_fibonacci_sequence 8