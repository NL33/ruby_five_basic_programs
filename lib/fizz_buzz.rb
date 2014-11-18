def fizz_buzz(number)
	total = ""
	1.upto(number) do |i|  #for each number starting at 1 up to "number", do the following
	  if i % 15 == 0
	  	total += "fizzbuzz "
	  elsif i % 5 == 0
	  	total += "buzz "
	  elsif i % 3 == 0 
	  	total += "fizz " 
	  else
	  	total += i.to_s + " "
	  end #close out if pattern
	 end # close out upto loop
	total
end

puts fizz_buzz(16) #any number can be entered here

