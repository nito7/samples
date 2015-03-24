#!/usr/bin/env ruby
# coding: utf-8

puts " ---- iterator method ----"

1.upto(5) {|i| puts i}
puts " --"
5.downto(1) {|i| puts i} 
puts " --"
1.step(10, 2) {|i| puts i}


puts " ---- inject ----"

r = []
(1..100).inject(r) {|a, b| a.unshift(b)}
p r



