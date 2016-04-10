class Imagefile < ActiveRecord::Base

  extend FriendlyId
  friendly_id :name, use: :slugged

  mount_uploader :rawimagefile, RawimagefileUploader

  validates_presence_of :namem, message: "Please supply a description for this image"

end
