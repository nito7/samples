-- this line is comment

--[[
this block is comment
]]

print("hello")

t = {}
t["app"] = 200
t["ban"] = 100
t["mel"] = 300

for i, v in pairs(t) do
  print(v)
end

s = {}
s[0] = 20
s[1] = 200
s[2] = 100
s[3] = 300

for i, v in ipairs(s) do
  print(v)
end

x = "hello"
y = "world"

print(x.." "..y)

function hoge(a, b)
  if a < b then
    return 0
  elseif a < 0 and b < 0 then
    return 0
  else
    return a + b, a - b, a * b
  end
end

for i = 0, 10, 2 do
  print(i)
end

a, b, c = hoge(10, 3)
print(a)
print(b)
print(c)
