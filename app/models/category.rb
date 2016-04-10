class Category < ActiveRecord::Base

  extend FriendlyId
  friendly_id :name, use: :slugged

  validated_presence_of :name, message: "Please supply a name for this category"

end
