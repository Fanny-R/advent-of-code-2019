class IntcodeComputer
	def compute(intcode)
		i = 0
		loop do
			action = intcode[i]

			break if action == 99
			
			intcode[intcode[i+3]] = intcode[intcode[i+1]] + intcode[intcode[i+2]] if action == 1
			
			intcode[intcode[i+3]] = intcode[intcode[i+1]] * intcode[intcode[i+2]] if action == 2

			i += 4
		end

		return intcode
	end
end
