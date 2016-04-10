class Item < ActiveRecord::Base

  extend FriendlyId
  friendly_id :name, use: :slugged

  has_and_belongs_to_many :rolodexes
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :virtualcollections
  has_and_belongs_to_many :datafiles
  has_and_belongs_to_many :imagefiles
  has_and_belongs_to_many :fieldoptions

  has_and_belongs_to_many(:items, :join_table => "items_relations", :foreign_key => "item_a_id", :association_foreign_key => "item_b_id")

  validates_presence_of :name, message: "Please supply a name for this item"
  validates_presence_of :collection_id, message: "Please supply a collection id for this item which help to identify the item in the collection"
  validates_uniqueness_of :collection_id, message: "Please supply a unique id for the this item in the collection"

  before_save :set_alphabet_letter

  public

  private

  def set_alphabet_letter
    self.alphabet_letter = self.name[0].downcase if !self.name.blank?
  end

end
