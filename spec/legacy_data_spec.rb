require('rspec')
require('legacy_data')

describe ('legacy_data') do 
	it("converts hash whose value is array into hash where value is the key of the array") do
		expect title_case('1 => [A, B]').to eq('A => 1, B => 1')
	end