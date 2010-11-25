require 'spec_helper'

describe Entry do
  
  describe "validations" do
    let(:entry) { Factory.build(:entry) }

    it "should create a new instance given valid attributes" do
      entry.should be_valid
    end
    
    it "is not valid without a food" do
      entry.food = nil
      entry.should_not be_valid
    end
    
    it "is not valid without a brand" do
      entry.brand = nil
      entry.should_not be_valid
    end
    
    it "is not valid without a producer" do
      entry.producer = nil
      entry.should_not be_valid
    end
    
    it "is not valid without a consumer" do
      entry.consumer = nil
      entry.should_not be_valid
    end
  end
  
  context "when creating a new entry" do
    it "does not create a new food record if that food already exists" do
      existing_food = Factory(:food)
      lambda {
        Factory(:entry, :food => existing_food)
      }.should_not change(Food, :count)
    end
    
    it "does not create a new brand record if that brand already exists" do
      existing_brand = Factory(:brand)
      lambda {
        Factory(:entry, :brand => existing_brand)
      }.should_not change(Brand, :count)
    end
  end
end
