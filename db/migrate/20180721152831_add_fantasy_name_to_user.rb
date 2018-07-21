class AddFantasyNameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :fantasy_name, :string
  end
end
