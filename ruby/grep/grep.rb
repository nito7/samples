# -*- coding: utf-8 -*-

def grep(pat, file)
  r = Regexp.new(pat)
  f = File.open(file)
  f.each_line do |line|
    if r =~ line then
      print line
    end
  end
  f.close()
end

p = ARGV[0]
grep(p, "t_grep.txt")
