def is_valid(password)
  digits = password.split('').map(&:to_i)

  adjacent_digits = [1]

  digits.each_with_index do |digit, index|
    if digits.length() - 1 < index + 1 
      return adjacent_digits.include?(2)
    end

  	if digit > digits[index + 1]
  	  return false 
  	end

  	if digit == digits[index + 1]
	  adjacent_digits[-1] = adjacent_digits[-1] + 1
  	else
	  adjacent_digits.push(1)
  	end
  end
end

def valid_passwords(from, to) 
  (from..to).map do |password|
    if is_valid(password.to_s)
      password
    else
      nil
    end
  end
end