#!/usr/bin/env ruby
# coding: utf-8

def is_kaibun(num)
  s = num.to_s
  n = s.size 
  n_h = (n % 2 == 0) ? (n/2 - 1) : n/2

  for i in 0..n_h
    if s[i] == s[n-(i-1)] then
      return false
    end
  end
  return true
end

for i in 1..999
  # TODO:
  num = 999 * (999 - i)
  
  if is_kaibun(num) then
    puts num
  end
end
