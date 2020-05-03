class IntcodeComputer
	@intcode
	@i

	def compute(intcode)
		@intcode = intcode
		@i = 0
		loop do
			instructions = @intcode[@i].to_s.chars.map(&:to_i)

			opcode = instructions.pop(2).join().to_i
			parameters = instructions.reverse

			break if opcode == 99
			
			if opcode == 1
				add(parameters)
				next
			end

			if opcode == 2
				multiply(parameters)
				next
			end

			if opcode == 3
				input
				next
			end

			if opcode == 4
				output(parameters)
				next
			end

			puts 'Unknown opcode ' + opcode.to_s
			exit

		end

		@intcode
	end

	private
	def add(parameters)
		values = get_values_from_parameters(parameters)

		@intcode[@intcode[@i+3]] = values[0] + values[1]

		@i += 4
	end

	def multiply(parameters)
		values = get_values_from_parameters(parameters)

		@intcode[@intcode[@i+3]] = values[0] * values[1]

		@i += 4
	end

	def input
		puts("Input : ")
		@intcode[@intcode[@i+1]] = gets.chomp.to_i

		@i += 2
	end

	def output(parameters)
		puts("Output: " + get_values_from_parameters(parameters)[0].to_s)

		@i += 2
	end

	def get_values_from_parameters(parameters)
		[
			parameters[0] == 1 ? @intcode[@i+1] : @intcode[@intcode[@i+1]],
			parameters[1] == 1 ? @intcode[@i+2] : @intcode[@intcode[@i+2]]
		]
	end
end
