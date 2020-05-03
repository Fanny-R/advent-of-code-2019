class IntcodeComputer
	def compute(intcode)
		i = 0
		loop do
			opcode = intcode[i]

			break if opcode == 99
			
			if opcode == 1
				intcode[intcode[i+3]] = intcode[intcode[i+1]] + intcode[intcode[i+2]]
				i += 4
			end

			if opcode == 2
				intcode[intcode[i+3]] = intcode[intcode[i+1]] * intcode[intcode[i+2]]
				i += 4
			end

			if opcode == 3
				puts("Input : ")
				intcode[intcode[i+1]] = gets

				i += 2
			end

			if opcode == 4
				puts("Output: " + intcode[intcode[i+1]].to_s)

				i += 2
			end
		end

		intcode
	end
end
