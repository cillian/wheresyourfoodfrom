class Food < ActiveRecord::Base
  has_many :entries
  has_many :brands, :through => :entries
  
  validates_presence_of :name
  validates_uniqueness_of :name

  HUMANIZED_ATTRIBUTES = { :name => "Food/Drink name" }

  private

  def self.human_attribute_name(attr)
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end
end
