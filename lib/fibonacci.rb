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

fibonnaci_sequence 1
fibonnaci_sequence 2
fibonnaci_sequence 3
fibonnaci_sequence 8
