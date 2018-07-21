class AddSocialNameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :social_name, :string
  end
end
