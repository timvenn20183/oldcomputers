class Datafile < ActiveRecord::Base

  extend FriendlyId
  friendly_id :name, use: :slugged

  mount_uploader :rawdatafile, RawdatafileUploader

  validates_presence_of :name, message: "Please suppy a name for this data file"

end
