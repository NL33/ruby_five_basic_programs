require('rspec')
require('calculator_in_words')

describe ('calculator_in_words') do 
	it("converts addition in words to addition equation") do
		expect title_case('2 plus 3').to eq('2 + 3')
	end