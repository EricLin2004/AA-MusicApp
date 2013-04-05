class Album < ActiveRecord::Base
  validates :name, :presence => true
  validates :band_id, :presence => true
  attr_accessible :genre, :name, :band_id, :recorded, :image
  belongs_to :band
  has_many :tracks

  has_attached_file :image
end
