
require File.join(File.dirname(__FILE__), %w[spec_helper])

describe TruckLoads do

  before(:all) do
    @truck_loads = TruckLoads.new
  end

  it "should return 6 passing 14 and 3" do
    @truck_loads.num_trucks(14,3).should == 6
  end

  it "should return 15 passing 15 and 1" do
    @truck_loads.num_trucks(15,1).should == 15
  end

  it "should return 4 passing 15 and 5" do
    @truck_loads.num_trucks(15,5).should == 4
  end

  it "should return 2 passing 10000 and 9999" do
    @truck_loads.num_trucks(10000,9999).should == 2  
  end

  it "should return 17 passing 33 and 2" do
    @truck_loads.num_trucks(33,2).should == 17
  end

end

# EOF
