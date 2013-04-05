class Artist < ActiveRecord::Base
  validates :name, :presence => true
  attr_accessible :name, :band_ids
  has_many :band_memberships
  has_many :bands, :through => :band_memberships
end
