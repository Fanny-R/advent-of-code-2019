require_relative 'point.rb'

def main_day3
	file = File.open("inputs/day3")
	# wires = file.readlines.map! {|line| line.split(",") }.map { |e| points_from_instructions(e) }

	# first_example = ["R8,U5,L5,D3","U7,R6,D4,L4"]
	# first_example = ["R75,D30,R83,U83,L12,D49,R71,U7,L72","U62,R66,U55,R34,D71,R55,D58,R83"]
	first_example = ["R98,U47,R26,D63,R33,U87,L62,D20,R33,U53,R51","U98,R91,D20,R16,D67,R40,U7,R15,U6,R7"]

	wires = first_example.map {|line| line.split(",") }.map { |e| points_from_instructions(e) }

	commons = []

 	wires[0].each { |point| wires[1].each { |point2| commons << point if point.eql? point2}}
 	start = Point.new(0,0)
 	closest = start.manhattan_distance(commons[0])

	commons.each do |common|
		distance = start.manhattan_distance(common)
		closest = distance if distance < closest
	end

	puts "*********"  
	puts "Part 1: " + closest.to_s
	puts "***"
	puts "Part 2: "
	puts "*********"
end

main_day3