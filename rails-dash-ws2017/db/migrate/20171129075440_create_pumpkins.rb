class CreatePumpkins < ActiveRecord::Migration[5.1]
  def change
    create_table :pumpkins do |t|
      t.string :species
      t.boolean :carved
      t.decimal :size
      t.decimal :weight
      t.decimal :price

      t.timestamps
    end
  end
end
