#!/usr/bin/env ruby
# coding: utf-8

## print 
puts "---- print ----"
puts a = "hello".to_s
puts b = "hello".inspect
p "hello"

puts [1, 2, 3].to_s
puts [1, 2, 3].inspect

puts ["a", "b", "c"].to_s
puts ["a", "b", "c"].inspect

puts ["a", "b", "c"]
p ["a", "b", "c"]

## object
puts "---- object id ----"
a = "hoge"
puts a.object_id

b = a
puts b.object_id

a += " fuga"
puts a.object_id

## iterator call
puts "---- iterator call ----"

def show
  yield "hoge"
  yield "fuga"
  yield "piyo"
end

show do |x| puts x end

## methods
puts "---- methods ----"

class MyClass
  @@fuga = "fuga"

  def initialize
    super
    @hoge = "Hoge"
  end

  def self.hoge
    p @hoge
  end

  def hogehoge
    p @hoge
  end

  def fuga
    p @@fuga
  end
end

c_my = MyClass.new
c_my.fuga
c_my.hogehoge
p c_my.public_methods

MyClass.hoge
p MyClass.methods

## String
puts "---- String ----"

puts "今日は #{`date`}"

c = "Ru"
c + "by"
puts c

c << "by"
puts c

p [1, 2, 3] << [4, 5]
p [1, 2, 3].concat([4, 5])

puts ["this", "is", "a", "pen"].join(" ")

## case
puts "---- case ----"

def ookisa(x)
  case x
  when String, Array
    return x.length
  when Numeric
    return x.abs
  else
    raise "Bad arg: %p" % x
  end
end

puts ookisa(2)

print "String === String: ", String === String, "\n" # Module#===
print "String == String: ", String == String, "\n"

## Hash
puts "---- Hash ----"

d = {}
print "{} is Hash?: ", d.kind_of?(Hash), "\n"

## false
puts "---- false ----"
if false then puts "yes" else puts "no" end
if nil   then puts "yes" else puts "no" end
if 0     then puts "yes" else puts "no" end
if ""    then puts "yes" else puts "no" end

## rest argument
puts "---- rest argument ----"

def test(a, b, *c)
  p c
end 
test(1, 2, 3, 4, 5)
