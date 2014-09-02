def ceasar_cipher(string_to_convert, conversion_factor)
	conversion_result = ""

	chars = string_to_convert.chars

	chars.each do |char|
		ascii_code = char.ord
		next_ascii_code = find_ascii_code(ascii_code, conversion_factor.to_i)
		# char = convert_lower_case(ascii_code.chr) if (char =~ /[a-z]/)
		# char = convert_upper_case(ascii_code.chr) if (char =~ /[A-Z]/) 
		puts next_ascii_code
		# conversion_result += char
	end

	puts "------ Valor convertido: ------"
	# puts conversion_result

end


# def convert_to_num(string)

# end

# def convert_to_char(value)

# end

def find_ascii_code(code, conversion_factor)
	range_lower_case = Range.new("a".ord, "z".ord).to_a
	range_upper_case = Range.new("A".ord, "Z".ord).to_a

	if !range_lower_case.index(code).nil? then

		if (code + conversion_factor) > range_lower_case.last then
			new_code = (range_lower_case.count - code) + (code - (range_lower_case.count - code))
		else
			new_code = code + conversion_factor 
		end
	end
	if !range_upper_case.index(code).nil? then
		if (code + conversion_factor) > range_upper_case.last then
			new_code = (range_upper_case.count - code) + (code - (range_upper_case.count - code))
		else
			new_code = code + conversion_factor
		end
	end

	return new_code
	
end

# def convert_lower_case(char)
# 	numeric_value = char.ord
# 	Range.new = ("a".ord, "z".ord)
# end

# def convert_upper_case(char)

# end


# def ceasar_cipher(string_to_convert, conversion_factor)
# 	conversion_result = ""

# 	lower_case_chars = Range.new('a', 'z').to_a
# 	upper_case_chars = Range.new('A', 'Z').to_a

# 	chars = string_to_convert.chars

# 	chars.each do |char|
# 		char = lower_case_chars.at(lower_case_chars.index(char) + conversion_factor.to_i) unless lower_case_chars.index(char).nil?
# 		char = upper_case_chars.at(upper_case_chars.index(char) + conversion_factor.to_i) unless upper_case_chars.index(char).nil?
		
# 		index_lower_case_chars = lower_case_chars.at(lower_case_chars.index(char)
# 		index_upper_case_chars = upper_case_chars.at(upper_case_chars.index(char)

# 		if (index_lower_case_chars + conversion_factor) > lower_case_chars.count then

# 		end

# 		if (index_upper_case_chars + conversion_factor) > upper_case_chars.count then
			
# 		end

# 		char.m

# 		conversion_result += char
# 	end

	

# 	puts "------ Valor convertido: ------"
# 	puts conversion_result
# end



puts "Type the string to be converted"
string = gets.chomp

puts "Type the conversion factor"
factor = gets.chomp

ceasar_cipher(string, factor)