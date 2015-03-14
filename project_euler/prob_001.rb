#!/usr/bin/env ruby
# coding: utf-8

def three_or_five(in_num)
  if (in_num % 3 == 0 || in_num % 5 == 0) then
    return true
  end
  return false
end

if (ARGV.size != 1) then
  puts "Usage: command number"
  exit
end


sum = 0
1.upto(ARGV[0].to_i - 1) do |v|
  if three_or_five(v) then
    sum += v
  end
end

puts sum
