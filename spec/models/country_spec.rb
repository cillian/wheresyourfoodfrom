require 'spec_helper'

describe Country do
  let(:country) { Factory.build(:country) }

  it "should create a new instance given valid attributes" do
    country.should be_valid
  end
  
  it "is not valid without a name" do
    country.name = nil
    country.should_not be_valid
  end
  
  it "is not valid if a country of the same name already exists" do
    existing_country = Factory(:country)
    country.name = existing_country.name
    country.should_not be_valid
  end

  describe "#exports" do
    it "does not return an entry if it is consumed in its own country" do
      country = Factory(:country)
      entry = Factory(:entry, :consumer => country, :producer => country)
      country.exports.should_not include(entry)
    end
  end
end
