class Imagefile < ActiveRecord::Base

  extend FriendlyId
  friendly_id :name, use: :slugged

  has_and_belongs_to_many :items

  mount_uploader :rawimagefile, RawimagefileUploader

  validates_presence_of :namem, message: "Please supply a description for this image"

end
