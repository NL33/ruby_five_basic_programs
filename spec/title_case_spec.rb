require('rspec')
require('title_case')

describe ('title_case') do 
	it("capitalizes the first letter of word") do
		expect title_case('hello').to eq('Hello')
	end

	it("capitalizes the first letter of each word in an array") do
		expect title_case('hello how are you').to eq('Hello How Are You') 
	end

	it("does not capitalize the words and, a, the, is, an, of") do
		expect title_case('hello there you and you').to eq('Hello There You and You')
	end

	it("capitalizes any word at the beginning of the array") do 
		expect title_case('and hello there you and you').to eq ('And Hello There You and You')
	end
end