class CreateBandMemberships < ActiveRecord::Migration
  def change
    create_table :band_memberships do |t|
      t.integer :band_id
      t.integer :artist_id

      t.timestamps
    end
  end
end
