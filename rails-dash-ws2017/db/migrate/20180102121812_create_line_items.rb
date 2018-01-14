class CreateLineItems < ActiveRecord::Migration[5.1]
  def change
    create_table :line_items do |t|
      t.references :order, foreign_key: true
      t.references :pumpkin, foreign_key: true
      t.decimal :amount

      t.timestamps
    end
  end
end
