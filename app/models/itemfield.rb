class Itemfield < ActiveRecord::Base

  extend FriendlyId
  friendly_id :name, use: :slugged

  validates_presence_of :name, message: "Please supply a name for this item field"

end
