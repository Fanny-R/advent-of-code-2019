class FuelCalculator
  def calculate(mass)
    (mass / 3).to_i - 2
  end

  def calculateWithFuel(mass)
    sum = 0

    loop do
      mass = calculate(mass)
      break if mass <= 0

      sum += mass
    end

    sum
  end
end
