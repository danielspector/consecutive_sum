require 'spec_helper'

def consecutive_sum?(num)
  check_input(num)
  1.upto(num/2) do |i|
    sum = i
    while sum < num
      i += 1
      sum += i
      return true if sum == num
    end
  end
  false
end

def check_input(num)
  raise ArgumentError, "Input must be an integer" unless num.is_a? Integer
  raise ArgumentError, "Input must be larger than 0" unless num > 0
end