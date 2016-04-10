class Condition < ActiveRecord::Base

  extend FriendlyId
  friendly_id :name, use: :slugged

  validates_presence_of :name,  message: "Please provide a description for this condition option"

end
