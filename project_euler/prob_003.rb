#!/usr/bin/env ruby
# coding: utf-8

def is_prime_factor(n, li)
  li.each do |v|
    if n % v == 0 then
      return false
    end
  end
  return true
end

list = [2]
num = 600851475143

for i in 3..num
  if is_prime_factor(i, list) then
    list.push(i)
  end
end

while p = list.pop do
  if num % p == 0 then
    puts p
  end
end

