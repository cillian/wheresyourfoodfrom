require 'spec_helper'

describe Brand do
  let(:brand) { Factory.build(:brand) }

  it "should create a new instance given valid attributes" do
    brand.should be_valid
  end
  
  it "is not valid without a name" do
    brand.name = nil
    brand.should_not be_valid
  end
  
  it "is not valid if a brand of the same name already exists" do
    existing_brand = Factory(:brand)
    brand.name = existing_brand.name
    brand.should_not be_valid
  end
end
