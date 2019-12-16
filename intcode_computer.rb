class IntcodeComputer
	def compute(intcode)
		i = 0
		loop do
			opcode = intcode[i]

			break if opcode == 99
			
			intcode[intcode[i+3]] = intcode[intcode[i+1]] + intcode[intcode[i+2]] if opcode == 1
			
			intcode[intcode[i+3]] = intcode[intcode[i+1]] * intcode[intcode[i+2]] if opcode == 2

			i += 4
		end

		intcode
	end
end
