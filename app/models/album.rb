class Album < ActiveRecord::Base
  attr_accessible :genre, :name, :band_id, :recorded, :image
  belongs_to :band
  has_many :tracks

  has_attached_file :image
end
