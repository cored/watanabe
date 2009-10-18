
require File.join(File.dirname(__FILE__), %w[spec_helper])

describe SpreadSheetColumn do

  before(:all) do
    @spreadsheet = SpreadSheetColumn.new
  end

  it "should return A if passed 1" do
    @spreadsheet.label(1).should == 'A' 
  end

  it "should return B if passed 2" do
    @spreadsheet.label(2).should == 'B'
  end

  it "should return AA if passed 27" do
    @spreadsheet.label(27).should == 'AA'
  end

  it "should return DG if passed 111" do
    @spreadsheet.label(111).should == 'DG'
  end

  it "should return ZZ if passed 702" do
    @spreadsheet.label(702).should == 'ZZ'
  end

  it "should return AE if passed 31" do
    @spreadsheet.label(31).should == 'AE'
  end

  it "should return AZ if passed 52" do
    @spreadsheet.label(52).should == 'AZ' 
  end

  it "should return CY if passed 103" do
    @spreadsheet.label(103).should == 'CY'
  end

end
