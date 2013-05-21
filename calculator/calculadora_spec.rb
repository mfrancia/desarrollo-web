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

describe "#multiplicar" do
	it "should return 6 when multiply 2 by 3" do
		@calculadora.multiplicar(2, 3).should == 6
	end
end

describe "#division" do
	it "should return 6 when divide 36 by 6" do
		@calculadora.dividir(36, 6).should == 6
	end
end

describe "#not_zero" do
	it "should return false when 0" do
		@calculadora.not_zero(0).should == false
	end
end

describe "#not_zero" do
	it "should return true when not 0" do
		@calculadora.not_zero(6).should == true
	end
end

end	 