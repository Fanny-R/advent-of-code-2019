def is_valid(password)
  digits = password.split('').map(&:to_i)

  has_adjacent_digits = false

  digits.each_with_index do |digit, index|
    if digits.length() - 1 < index + 1 
      return has_adjacent_digits
    end

  	if digit > digits[index + 1]
  	  return false 
  	end

  	if digit == digits[index + 1]
  	  has_adjacent_digits = true
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