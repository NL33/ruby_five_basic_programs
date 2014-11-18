require('rspec')
require('fizz_buzz')

describe ('fizz_buzz') do 
	it("prints integers up to 7") do
		expect fizz_buzz('7').to eq('1, 2, 3, 4, 5, 6, 7')
	end
end