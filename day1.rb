require_relative 'fuel_calculator.rb'

sum = 0
file = File.open("inputs/day1")
file.each_line do |line|
    sum += FuelCalculator.calculate(line)
end

puts sum
