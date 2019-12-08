class Point
	attr_reader :x, :y

	def initialize(x, y)
		@x = x
		@y = y
	end

	def manhattan_distance(another_point)
		(@x - another_point.x).abs + (@y - another_point.y).abs
	end
end