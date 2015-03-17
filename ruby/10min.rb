#!/usr/bin/env ruby
# coding: utf-8
require 'pp'

n = 3
c = ["A", "B", "C", "D", "E", "F", "G"]
r = Array.new()

for i in 1..n
  r.push([])
end

i = 0
while true
  if i % n == 0 and c.size < n then
    break
  end
  r[i % n].push(c.shift)
  i += 1
end

pp r
