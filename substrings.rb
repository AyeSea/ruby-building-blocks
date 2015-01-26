=begin
This method takes a string as the first argument and then an array of valid substrings (dictionary)
as the second argument. It returns a hash listing each substring (case insensitive) that was found
in the original string and how many times it was found.
=end

def substrings(str, arr_substrs)
	words = str.split(" ").map{|word| word.downcase}

	arr_substrs.map!{|substr| substr.downcase}

	substrs_of_str = Hash.new(0)
	words.each do |word|
		arr_substrs.each do |substr|
			if word.include?(substr)
				substrs_of_str[substr] += 1
			end
		end
	end

	p substrs_of_str
end

dictionary = %w{below down go going horn how howdy it i low own part partner sit}

substrings("below", dictionary)
#Should return {"below"=>1, "low"=>1}
substrings("Howdy partner, sit down! How's it going?", dictionary)
#Should return {"how"=>2, "howdy"=>1, "part"=>1, "partner"=>1, "it"=>2, "i"=>3, "sit"=>1,
#"down"=>1, "own"=>1, "go"=>1, "going"=>1}