class Category < ActiveRecord::Base

  extend FriendlyId
  friendly_id :name, use: :slugged

  has_and_belongs_to_many :items

  validated_presence_of :name, message: "Please supply a name for this category"

end
