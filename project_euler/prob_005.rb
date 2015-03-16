#!/usr/bin/env ruby
# conding: utf-8

def can_divide(n, list)
  list.each do |v|
    if n % v != 0 then
      return false
    end
  end
  return true
end

n = 21
_li = [1,2,3,4,5,6,7,8,8,9,10,11,12,13,14,15,16,17,18,19,20]
li = []

for i in 0..(_li.size() - 1)
  c = 0
  for j in i..(_li.size() - 1)
    if i == j then
      next
    end
    if _li[j] % _li[i] == 0 then
      c = 1
    end
  end
  if c == 0 then
    li.push _li[i]
  end
end

while 1 do
  puts n
  if can_divide(n, li) then
    puts n
    break
  end
  n += 1
end

