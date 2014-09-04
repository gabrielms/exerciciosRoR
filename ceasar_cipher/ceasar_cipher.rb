def ceasar_cipher(string_to_convert, conversion_factor)
	conversion_result = ""

	chars = string_to_convert.chars

	chars.each do |char|
		ascii_code = char.ord
		next_ascii_code = find_ascii_code(ascii_code, conversion_factor.to_i)
		conversion_result += next_ascii_code.chr unless next_ascii_code.nil?
	end

	puts "------ Conversion result: ------"
	puts conversion_result

end

def find_ascii_code(code, conversion_factor)
	range_lower_case = Range.new("a".ord, "z".ord).to_a
	range_upper_case = Range.new("A".ord, "Z".ord).to_a
	
	if !range_lower_case.index(code).nil? then
		while(conversion_factor > 0) do
			new_code ||= code
			new_code = (range_lower_case.first - 1) if new_code >= range_lower_case.last
			conversion_factor -= 1
			new_code += 1
		end
	end

	if !range_upper_case.index(code).nil? then
		while(conversion_factor > 0) do
			new_code ||= code
			new_code = (range_upper_case.first - 1) if new_code >= range_upper_case.last
			conversion_factor -= 1
			new_code += 1
		end

	end

	new_code ||= code

	return new_code
	
end




puts "Type the string to be converted"
string = gets.chomp

puts "Type the conversion factor"
factor = gets.chomp

ceasar_cipher(string, factor)