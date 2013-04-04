class AddRegularBonus < ActiveRecord::Migration
  def change
    add_column :tracks, :regular_bonus, :string
  end
end
