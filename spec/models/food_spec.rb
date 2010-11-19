require 'spec_helper'

describe Food do
  let(:food) { Factory.build(:food) }

  it "should create a new instance given valid attributes" do
    food.should be_valid
  end
  
  it "is not valid without a name" do
    food.name = nil
    food.should_not be_valid
  end
  
  it "is not valid if a food of the same name already exists" do
    existing_food = Factory(:food)
    food.name = existing_food.name
    food.should_not be_valid
  end
end
