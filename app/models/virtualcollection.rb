class Virtualcollection < ActiveRecord::Base

  extend FriendlyId
  friendly_id :name ,use: :slugged

  has_and_belongs_to_many :items

  validates_presence_of :name, message: "Please supply a description for this collection"

end
