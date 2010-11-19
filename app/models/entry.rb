class Entry < ActiveRecord::Base
  belongs_to :food
  belongs_to :brand
  belongs_to :consumer, :class_name => 'Country', :foreign_key => :consumer_id
  belongs_to :producer, :class_name => 'Country', :foreign_key => :producer_id
  has_many :flags

  accepts_nested_attributes_for :food, :brand
  
  validates_presence_of :food, :brand, :consumer, :producer
  
  named_scope :flagged, :include => :flags, :conditions => 'EXISTS (SELECT id FROM flags WHERE entries.id = entry_id)', :order => 'flags.created_at DESC'
  named_scope :unflagged, :conditions => 'NOT EXISTS (SELECT id FROM flags WHERE entries.id = entry_id)', :order => 'created_at DESC'

  def food_attributes=(attributes)
    self.food = Food.find_or_create_by_name(attributes[:name])
  end
  
  def brand_attributes=(attributes)
    self.brand = Brand.find_or_create_by_name(attributes[:name])
  end
end
