class AddUserToAtractive < ActiveRecord::Migration[5.2]
  def change
    add_reference :atractives, :user, foreign_key: true
  end
end
