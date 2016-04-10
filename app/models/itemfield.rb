class Itemfield < ActiveRecord::Base

  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :fieldoptions
  has_many :items, :through => :fieldoptions

  validates_presence_of :name, message: "Please supply a name for this item field"

end
