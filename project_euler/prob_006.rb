#!/usr/bin/env ruby
# coding: utf-8

sum = 0
b_sum = 0
for i in 1..100
  sum += i
  b_sum += i**2
end

puts (b_sum - sum^2)
