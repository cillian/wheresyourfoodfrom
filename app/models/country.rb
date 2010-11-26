class Country < ActiveRecord::Base
  has_many :consumptions, :class_name => 'Entry', :foreign_key => :consumer_id
  has_many :exports, :class_name => 'Entry', :foreign_key => :producer_id, :finder_sql => 
    'SELECT * FROM entries WHERE producer_id = #{id} AND consumer_id != #{id}'
  validates_presence_of :name
  validates_uniqueness_of :name
end
