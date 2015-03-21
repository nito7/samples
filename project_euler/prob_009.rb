#!/usr/bin/env ruby
# coding: utf-8

def chk(a, b, c)
  return a ** 2 + b ** 2 == c ** 2
end

for i in 1..1000
  for j in i..1000
    c = 1000 - (i + j)
    if chk(i, j, c) then
      print "a = ", i, ", b = ", j, ", c = ", c, "\n"
      break
    end
  end
end

