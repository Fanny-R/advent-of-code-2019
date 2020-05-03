require_relative 'point.rb'
require "set"

def main_day3
  file = File.open("inputs/day3")
  wires = file.readlines.map! { |line| line.split(",") }.map { |e| points_from_instructions(e) }

  # first_example = ["R8,U5,L5,D3","U7,R6,D4,L4"]
  # first_example = ["R75,D30,R83,U83,L12,D49,R71,U7,L72","U62,R66,U55,R34,D71,R55,D58,R83"]
  # first_example = ["R98,U47,R26,D63,R33,U87,L62,D20,R33,U53,R51","U98,R91,D20,R16,D67,R40,U7,R15,U6,R7"]

  # wires = first_example.map {|line| line.split(",") }.map { |e| points_from_instructions(e) }

  commons = wires[0] & wires[1]

  distances1 = commons.map do |common|
    common.manhattan_distance(Point.new(0, 0))
  end

  distances2 = commons.map do |common|
    wire_1_index = wires[0].index { |x| x.eql? common }
    wire_2_index = wires[1].index { |x| x.eql? common }

    wire_1_index + wire_2_index if wire_1_index and wire_2_index
  end

  puts "*********"
  puts "Part 1: " + distances1.select { |x| !x.eql? Point.new(0, 0) }.min.to_s
  puts "***"
  puts "Part 2: " + distances2.compact.min.to_s
  puts "*********"
end

main_day3
