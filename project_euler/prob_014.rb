#!/usr/bin/env ruby
# cording: utf-8

n = 1_000_000

r = 0
for i in 2..(n-1)
  c = []
  x = i
  m = -1
  while true
    c.push x
    if x == 1 then
      break
    end
    if x % 2 == 0 then
      x = x / 2
    else
      x = 3 * x + 1
    end
  end
  p c
  if c.length > m then
    m = c.length
    r = i
  end
end

puts r
