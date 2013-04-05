class BandMembership < ActiveRecord::Base
  validates :artist_id, :presence => true
  validates :band_id, :presence => true
  attr_accessible :artist_id, :band_id
  belongs_to :artist
  belongs_to :band
end
