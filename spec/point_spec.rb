require_relative '../point.rb'

describe Point do
    describe "manhattan_distance" do
	    it "manhattan distances" do
	    [
          [
            Point.new(-1, 5),
            Point.new(1, 6),
            3,
          ],
          [
            Point.new(-1, 5),
            Point.new(3, 5),
            4,
          ],
          [
            Point.new(-1, 5),
            Point.new(2, 3),
            5,
          ],
          [
            Point.new(1, 6),
            Point.new(3, 5),
            3,
          ],
          [
            Point.new(1, 6), 
            Point.new(2, 3),
            4,
          ],
      ].each do |point_1, point_2, expected|
        expect(point_1.manhattan_distance(point_2)).to eq expected
      end
    end
	end
end

describe "points_from_instructions" do
  subject { points_from_instructions }

  it " pointes from instructions" do
    expect(points_from_instructions(['R4'])).to eql [
      Point.new(1, 0),
      Point.new(2, 0),
      Point.new(3, 0),
      Point.new(4, 0)
    ]
  end
end