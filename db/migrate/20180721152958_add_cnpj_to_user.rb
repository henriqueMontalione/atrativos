class AddCnpjToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :cnpj, :string
  end
end
