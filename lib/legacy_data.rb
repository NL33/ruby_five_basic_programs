def legacy_data(data)

numbers_with_letters = data
numbers_with_letters.each_key do |number, letter| #for each key (ie, number here) in data, do the following (using number and data to represent key and value)
  numbers_with_letters[number].each do |letter| #you loop the number and letter

  puts " '#{letter}' " + "=> #{number},"

  end
end
end
 

#example:
legacy_data(1 => ["A", "B", "C"], 2=> ["D", "E", "F"])
