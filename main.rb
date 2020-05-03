require_relative 'intcode_computer.rb'


file = File.open("inputs/day5")

intcode = file.read.split(",").map(&:to_i)

IntcodeComputer.new.compute(intcode)
