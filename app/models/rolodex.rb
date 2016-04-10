class Rolodex < ActiveRecord::Base

  extend FriendlyId
  friendly_id :name, use: :slugged

  validates_presence_of :name, message: "Please supply a name for this rolodex entry"
  validates :type, numericality: { only_integer: true }

end
