class Concert < ApplicationRecord
  belongs_to :group
  validates :name, :place, :audience, :date, :duration, :group_id, presence: true
  
end
