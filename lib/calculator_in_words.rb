def legacy_data(entry)
sentences = entry.split("?") #In case the entry has more than one sentence, the entry is split anywhere there is a "?"
							  #Note: zdraft_calculator_to_words.rb has an example of an alternative way to separate out 
							  #different sentences in a string, using .slice
sentences.each do |sentence|  

	 #note: in interest of time, only single operations per sentence, and only plus, minus/subtract, and divided by operators have been addressed, 
	 #and some variations (such as "What is 2 + 3, as opposed to What is 2 plus 3") have not been addressed, but solution would be similar to below
  	 #A few different methods have been used for illustrative purposes.

  if sentence.include? "plus" 

		sentence = sentence.delete(",") #in case users enter commas, such as in "1,000,000"
		change_minus = sentence.tr("plus", " + ")
		entry_without_excess = change_minus.tr('^0-9.+', " ")
		strip_entry_without_excess = entry_without_excess.strip
		entry_strip = strip_entry_without_excess
		puts eval(entry_strip)

   elsif (sentence.include? "minus") 
		sentence = sentence.delete(",") #in case users enter commas, such as in "1,000,000"
		change_minus = sentence.tr("minus", "- ")
		entry_without_excess = change_minus.tr('^0-9.-', " ")
		strip_entry_without_excess = entry_without_excess.strip
		entry_strip = strip_entry_without_excess
		puts eval(entry_strip)

  	elsif (sentence.include? "subtract")
  		remove_any_commas =  sentence.delete(",")#in case users enter commas, such as in "1,000,000"
  		subtract_position = remove_any_commas.index("subtract")
		remove_characters = remove_any_commas.tr("subtract", " ")
		insert_subtract = remove_characters.insert(subtract_position, " - ")
		entry_without_excess = insert_subtract.tr('^0-9.-', " ")
		puts eval(entry_without_excess)

	elsif (sentence.include? "divided by")
		  	#remove any words other than the equation words:
		sentence = sentence.delete(",") #in case users enter commas, such as in "1,000,000"
		change_dividedby = sentence.tr('divided by', '  / ')
		entry_without_excess = change_dividedby.tr('^0-9./', " ") #"." provided to address floats; note this provides space before and after + sign, which is required to produce separate elements in array when we split
		entry_split = entry_without_excess.split

		#change first integer (if integer) to float:
		first_element = entry_split[0]  #2
		first_element_float = first_element.to_f #2.0
		result = entry_split.delete_at(0)  #2  (removes 2)

		entry_split.insert(0, first_element_float)  # ["2.0", "+", "3"]
		
		#change next integer (if integer) to float:
		third_element = entry_split[2]  #3
		third_element_float = third_element.to_f #3.0
		entry_split.delete_at(2)  #3  (removes 2)
		entry_split.insert(2, third_element_float)  # ["2.0", "+", "3.0"]
		#result
		 puts entry_split[0] / entry_split[2]
 
  end #end of branch

end #end of loop

end

puts legacy_data("what is 500.2 plus 30? Ok, well then, what is 7,000 divided by 62.3, smart guy?") #as example

