class Food < ActiveRecord::Base
  has_many :entries
  has_many :brands, :through => :entries
  has_many :producers, :through => :entries
  has_many :consumers, :through => :entries
  
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_inclusion_of :consumption_type, :in => %w(drink food)

  HUMANIZED_ATTRIBUTES = { :name => "Food/Drink name" }

  private

  def self.human_attribute_name(attr)
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end
end
