#!/usr/bin/env ruby
# coding: utf-8

n = 10001
r = [2]

i = 2
while true do
  i += 1
  is_p = true
  if r.size > n then
    break
  end
  r.each do |v|
    if i % v == 0 then
      is_p = false 
      break
    end
  end
  if is_p then
    r.push i
  end
end

puts r[n-1]
