def numbers_in_words(number)
	
 single_dictionary = {0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 
 	 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 
 	 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen",
 	 19 => "nineteen", 20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 
 	            60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety" }

 tens_dictionary = { 2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 
 	            6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety" }


if number < 19
	 single_dictionary[number]
elsif number < 100
	 tens_dictionary[number / 10] + " "  + single_dictionary[number % 10]
elsif number < 1000 
	 "#{single_dictionary[number / 100]}" + ' hundred ' + "#{numbers_in_words(number % 100)}" #the #{ structure is to demonstrate string interpolation
elsif number < 10000
	 single_dictionary[number / 1000] + " thousand " + numbers_in_words(number % 1000)
elsif number < 100000
	 numbers_in_words(number / 1000) + " thousand " + numbers_in_words(number % 1000)
elsif number < 1000000
	 numbers_in_words(number / 1000) + " thousand " + numbers_in_words(number % 1000)
elsif number < 10000000
	 numbers_in_words(number / 1000000) + " million " + numbers_in_words(number % 1000000)
elsif number < 100000000
	 numbers_in_words(number / 1000000) + " million " + numbers_in_words(number % 1000000)
elsif number < 1000000000
	 numbers_in_words(number / 1000000) + " million " + numbers_in_words(number % 1000000)
elsif number < 10000000000
	 numbers_in_words(number / 1000000000) + " billion " + numbers_in_words(number % 1000000000)
elsif number < 100000000000
	 numbers_in_words(number / 1000000000) + " billion " + numbers_in_words(number % 1000000000)
elsif number < 1000000000000
	 numbers_in_words(number / 1000000000) + " billion " + numbers_in_words(number % 1000000000)
elsif number < 10000000000000
	 numbers_in_words(number / 1000000000000) + " trillion " + numbers_in_words(number % 1000000000000)
end

end

puts numbers_in_words(9999987654214) #result:nine trillion nine hundred ninety nine billion nine hundred eighty seven million... 
 											#...six hundred fifty four thousand two hundred fourteen


 

