#!/usr/bin/env ruby
# coding: utf-8

require './tree.rb'

t = Tree.new

20.times do |x|
  key = rand
  t[key] = x
end

t.each do |k, v|
  print k, " ", v, "\n"
end

