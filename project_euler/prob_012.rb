#!/usr/bin/env ruby
# cording: utf-8

m = 500
i = 1

while true
  d = []
  for j in 1..i
    if i % j == 0 then
      d.push j
    end
  end
  if d.length > m then
    break
  end
end
puts i
