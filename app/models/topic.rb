class Topic < ActiveRecord::Base
  belongs_to :section

  validates :description, :presence => true
end
