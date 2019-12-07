require_relative 'intcode_computer.rb'


file = File.open("inputs/day2")

intcode = file.read.split(",").map(&:to_i)

intcode[1] = 12
intcode[2] = 2

processed_intcode = IntcodeComputer.new.compute(intcode)

puts "*********"
puts "Part 1: " + processed_intcode[0].to_s
puts "*********"
