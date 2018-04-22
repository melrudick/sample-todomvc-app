class List < ActiveRecord::Base
  has_many :items
  # this adds methods to my List model
  validates :name, presence: true
end
