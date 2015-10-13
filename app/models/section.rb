class Section < ActiveRecord::Base
  has_many :topics
  validates :name, :presence => true
  validates :number, :presence => true
end
