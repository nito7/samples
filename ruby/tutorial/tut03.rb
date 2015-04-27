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



puts " ---- block argument ----"

def foo &b
  @bk = b
  10.times &@bk
end

foo {puts "hello"}


puts " ---- caution ----"

p [1,2,3].each {|x| puts x}, 4    # OK 
puts " --"
p [1,2,3].each do |x| puts x end, 4 # SyntaxError
puts " --"
p [1,2,3].each do |x| puts x end    # LocalJumpError
puts " --"
p([1,2,3].each()) {|x| puts x}      # LocalJumpError (same to above)

