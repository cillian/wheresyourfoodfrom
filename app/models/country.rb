class Country < ActiveRecord::Base
  has_many :imports, :class_name => 'Entry', :foreign_key => :consumer_id
  has_many :exports, :class_name => 'Entry', :foreign_key => :producer_id 
end
