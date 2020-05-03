class IntcodeComputer
	@intcode

	def compute(intcode)
		@intcode = intcode
		i = 0
		loop do
			instructions = @intcode[i].to_s.chars.map(&:to_i)

			opcode = instructions.pop(2).join().to_i
			parameters = instructions.reverse

			break if opcode == 99
			
			if opcode == 1
				i = add(i, parameters)
				next
			end

			if opcode == 2
				i = multiply(i, parameters)
				next
			end

			if opcode == 3
				i = input(i)
				next
			end

			if opcode == 4
				i = output(i, parameters)
				next
			end

			puts 'Unknown opcode ' + opcode.to_s
			exit

		end

		@intcode
	end

	def add(i, parameters)
		val1 = parameters[0] == 1 ? @intcode[i+1] : @intcode[@intcode[i+1]]
		val2 = parameters[1] == 1 ? @intcode[i+2] : @intcode[@intcode[i+2]]

		@intcode[@intcode[i+3]] = val1 + val2

		i += 4
	end

	def multiply(i, parameters)
		val1 = parameters[0] == 1 ? @intcode[i+1] : @intcode[@intcode[i+1]]
		val2 = parameters[1] == 1 ? @intcode[i+2] : @intcode[@intcode[i+2]]

		@intcode[@intcode[i+3]] = val1 * val2

		i += 4
	end

	def input(i)
		puts("Input : ")
		@intcode[@intcode[i+1]] = gets.chomp.to_i

		i += 2
	end

	def output(i, parameters)
		value = parameters[0] == 1 ? @intcode[i+1] : @intcode[@intcode[i+1]]
		puts("Output: " + value.to_s)

		i += 2
	end
end
