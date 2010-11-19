class Flag < ActiveRecord::Base
  belongs_to :entry
  validates_presence_of :entry, :encrypted_session_id
end
