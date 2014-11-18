#alternative way to separate out different sentences in a string:

entry = "what is 3 plus 2? What is 5 divided by 6?"

q_mark = entry.index("?")
sentence = entry[0..q_mark]
entry.slice!(sentence)
puts sentence
puts entry



