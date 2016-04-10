class Fieldoption < ActiveRecord::Base

  extend FriendlyId
  friendly_id :name , use: :slugged

  has_and_belongs_to_many :items
  belongs_to :itemfield

  validates_presence_of :name, message: "Please supply a name for this field option"

end
