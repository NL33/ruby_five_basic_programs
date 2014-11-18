def title_case(words)
    elements_array = words.split 
    elements_array.each do |element|
    	if element == elements_array[0]
    		element.capitalize!
    	elsif element == "and" || element == "a" || element == "the" || element == "is" || element == "an" || element == "of" 
    		element
    	else
    		element.capitalize!
        end
    end
    elements_array.join(" ")
end

puts title_case("the story of a great and kind gentleman") 