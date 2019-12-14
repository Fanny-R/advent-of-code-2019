require_relative 'fuel_calculator.rb'

sum_part_one = sum_part_two = 0
file = File.open("inputs/day1")
file.each_line do |line|
    sum_part_one += FuelCalculator.new.calculate(line.to_i)
    sum_part_two += FuelCalculator.new.calculateWithFuel(line.to_i)
end

puts "*********"
puts "Part 1: " + sum_part_one.to_s
puts "***"
puts "Part 2: " + sum_part_two.to_s
puts "*********"
