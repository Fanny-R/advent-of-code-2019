require_relative '../fuel_calculator.rb'

describe FuelCalculator do
  subject { described_class.new }
  describe "calculate" do
    it "calculate according to the mass" do
      [
          [12, 2],
          [14, 2],
          [1969, 654],
          [100756, 33583],
      ].each do |mass, expected|
        expect(subject.calculate(mass)).to eq expected
      end
    end
  end

  describe "calculateWithFuel" do
    it "calculate according to the mass and the returned fuel" do
      [
          [12, 2],
          [14, 2],
          [1969, 966],
          [100756, 50346],
      ].each do |mass, expected|
        expect(subject.calculateWithFuel(mass)).to eq expected
      end
    end
  end
end
