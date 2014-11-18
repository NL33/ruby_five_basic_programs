require('rspec')
require('calculator_in_words')

describe ('numbers_in_words') do 
	it("converts integer to word") do
		expect title_case('5').to eq('five')
	end