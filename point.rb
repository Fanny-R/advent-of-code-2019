class Point
	attr_accessor :x, :y

	def initialize(x, y)
		@x = x
		@y = y
	end

	def manhattan_distance(another_point)
		(@x - another_point.x).abs + (@y - another_point.y).abs
	end

	def eql?(other)
	 @x == other.x and @y == other.y
	end

	def to_s
		"x: #{@x} y:#{@y}"
	end
end

def points_from_instructions (wire)
	points = []
	current_position = Point.new(0,0)

	wire.each do |instruction| 
		direction = instruction[0]
		steps = instruction[1..-1].to_i

		1.upto(steps) do
			current_position.y = current_position.y + 1 if direction == "U"
			current_position.y = current_position.y - 1 if direction == "D"
			current_position.x = current_position.x + 1 if direction == "R"
			current_position.x = current_position.x - 1 if direction == "L"
			points << Point.new(current_position.x, current_position.y)
		end
	end

	points
end
