#!/usr/bin/env ruby
# cording: utf-8

m = 500
i = 1

while true
  a = 0
  d = []
  i.downto(1) do |x|
    a += x
  end
  for j in 1..a
    if a % j == 0 then
      d.push j
    end
  end
  if d.length > m then
    break
  end
  i += 1
end
puts i
