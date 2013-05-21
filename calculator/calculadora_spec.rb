require './calculadora'
describe Calculadora do
	 before do
	 	@calculadora = Calculadora.new
	 end
describe "#suma" do
	it "should return 0 when adding 0 to 0" do
		@calculadora.suma(0, 0).should == 0
	end
end

describe "#suma" do
	it "should return 7 when adding 4 to 3" do
			@calculadora.suma(4, 3).should == 7
	end
end

describe "#resta" do
	it "should return 3 when substracting 4 from 7" do
		@calculadora.resta(7, 4).should == 3
	end
end


end	 