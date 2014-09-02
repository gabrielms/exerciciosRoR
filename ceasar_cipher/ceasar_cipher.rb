# def ceasar_cipher(string_to_convert, conversion_factor)
# 	conversion_result = ""

# 	chars = string_to_convert.chars

# 	chars.each do |char|
# 		ascii_code = char.ord
# 		ascii_code += (conversion_factor.to_i)
# 		char = convert_lower_case(ascii_code.chr) if (char =~ /[a-z]/) 
# 		char = convert_upper_case(ascii_code.chr) if (char =~ /[A-Z]/) 
# 		conversion_result += char
# 	end

# 	puts "------ Valor convertido: ------"
# 	puts conversion_result

# end

# def convert_lower_case(char)
# 	numeric_value = char.ord
# 	Range.new = ("a".ord, "z".ord)

# end

# def convert_upper_case(char)
# end

def ceasar_cipher(string_to_convert, conversion_factor)
	conversion_result = ""

	lower_case_chars = Range.new('a', 'z').to_a
	upper_case_chars = Range.new('A', 'Z').to_a

	chars = string_to_convert.chars

	chars.each do |char|
		char = lower_case_chars.at(lower_case_chars.index(char) + conversion_factor.to_i) unless lower_case_chars.index(char).nil?
		char = upper_case_chars.at(upper_case_chars.index(char) + conversion_factor.to_i) unless upper_case_chars.index(char).nil?
		conversion_result += char
	end

	

	puts "------ Valor convertido: ------"
	puts conversion_result
end



puts "Type the string to be converted"
string = gets.chomp

puts "Type the conversion factor"
factor = gets.chomp






ceasar_cipher(string, factor)