#!/usr/bin/env ruby
# coding: utf-8

n = 2_000_000
p = [2]

def is_prime(x, li)
  li.each do |v|
    if x % v == 0 then
      return false
    end
  end
  return true
end

for i in 3..n
  if is_prime(i, p) then
    p.push(i)
  end
end

puts p.inject(0) {|sum, n| sum + n}
