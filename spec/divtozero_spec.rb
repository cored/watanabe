
require File.join(File.dirname(__FILE__), %w[spec_helper])

describe DivToZero do
  before(:each) do
    @divtozero = DivToZero.new
  end

  it "should return '00' if passed 2000000000 and 100" do
    @divtozero.last_two(2000000000, 100).should == '00'
  end

  it "should return '02' if passed 1000 and 3" do
    @divtozero.last_two(1000, 3).should == '02'
  end

  it "should return '00' if passed 275 and 5" do
    @divtozero.last_two(275,5).should == '00'
  end

  it "should return '00' if passed 23442 and 75" do
    @divtozero.last_two(23442, 75).should == '00'
  end 

  it "should return '15' if passed 428392 and 17" do
    @divtozero.last_two(428392, 17).should == '15'
  end

  it "should return '72' if passed 32442 and 99" do
    @divtozero.last_two(32442, 99).should == '72'
  end

end

# EOF
