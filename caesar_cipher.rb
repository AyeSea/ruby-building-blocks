def caesar_cipher(str, num_shift)
	words = str.split(" ")
	converted_words = []

	words.each do |word|
		letters = word.split("")
		converted_word = ""

		letters.each do |letter|
			if letter =~ /[^a-zA-Z]/
				converted_word << letter
				next
			end

			ascii_num = letter.ord + num_shift
			if (letter =~ /[A-Z]/ && ascii_num > 90) || (letter =~ /[a-z]/ && ascii_num > 122)
				ascii_num -= 26
				converted_word << ascii_num.chr
			else
				converted_word << ascii_num.chr
			end
		end
		
		converted_words << converted_word
	end

	puts converted_words.join(" ")
end

caesar_cipher("What a string!", 5)
#Should return "Bmfy f xywnsl!"