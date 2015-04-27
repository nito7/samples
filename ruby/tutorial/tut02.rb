#!/usr/bin/env ruby
# coding: utf-8

puts " ---- rest argument ----"

def baz(a, b, c, *r)
  p a
  p b
  p c
  p r # copied
  p a.object_id
  p b.object_id
  p c.object_id
  p r.object_id # copied
end

def baz2(a, b, c, r)
  p a
  p b
  p c
  p r # reference
  p a.object_id
  p b.object_id
  p c.object_id
  p r.object_id # reference
end

x = %w(Hot Tot Jin Jod Fie Fly Zan Zod Pik Snik Lun Lod Ichabod)
p x
puts x.object_id

puts " --"
baz(*x) # * for each input values
puts " --"
baz(13, :Thaegan, :children, *x)
puts " --"
baz2(13, :Thaegan, :children, x)

puts " ---- module ----"

## module 
module Foo
  def hoge
    puts 'hoge'
  end
  module_function :hoge # private and static method

  def fuga
    puts 'fuga'
  end
end

## class
class Hoge
  include Foo # include module
  def hogehoge
    hoge
  end
end

class Fuga
end

a = Hoge.new
a.hogehoge

b = Fuga.new
b.extend Foo # extend module
b.fuga

