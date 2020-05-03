require_relative 'intcode_computer.rb'


file = File.open("inputs/day2")

intcode = file.read.split(",").map(&:to_i)

intcode_part1 = intcode.dup

intcode_part1[1] = 12
intcode_part1[2] = 2

processed_intcode_part1 = IntcodeComputer.new.compute(intcode_part1)

puts "*********"
puts "Part 1: " + processed_intcode_part1[0].to_s

0.upto(99) do |noun|
  0.upto(99) do |verb|
    intcode_part2 = intcode.dup
    intcode_part2[1] = noun
    intcode_part2[2] = verb
    processed_intcode_part2 = IntcodeComputer.new.compute(intcode_part2)

    if processed_intcode_part2[0] == 19690720
      puts "***"
      puts "Part 2: " + (100 * noun + verb).to_s
      puts "*********"
      break
    end
  end
end
