class CreateAtractives < ActiveRecord::Migration[5.2]
  def change
    create_table :atractives do |t|
      t.string :name
      t.string :address
      t.time :duration_time
      t.integer :max_capacity
      t.decimal :ticket_price

      t.timestamps
    end
  end
end
