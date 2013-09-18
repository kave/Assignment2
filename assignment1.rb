#!/usr/bin/env ruby

puts "Domain Results"
puts "==================================="

contents = File.open("assignment_two_text.txt", "r"){ |file| file.read }
domain_name = contents.scan(/\@\w+.com/)

domain_map = Hash.new
domain_name.sort!
domain_name.each {|x|
  if domain_map.include? x then domain_map[x] += 1
  else domain_map[x] = 1
 end }

domain_map.each_key{|key|

  str = key + ": " + domain_map[key].to_s + " time(s)"
  puts str.rjust(35)
}
