class Band < ActiveRecord::Base
  attr_accessible :name, :artist_ids, :image
  has_many :albums
  has_many :band_memberships
  has_many :tracks, :through => :albums
  has_many :artists, :through => :band_memberships

  has_attached_file :image
end
