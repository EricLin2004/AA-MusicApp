class Track < ActiveRecord::Base
  validates :name, :presence => true
  validates :album, :presence => true
  attr_accessible :album_id, :name, :regular_bonus
  belongs_to :album
  has_one :band, :through => :album
end
