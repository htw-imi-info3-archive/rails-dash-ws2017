class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :content
      t.references :pumpkin.species, foreign_key: true
      t.timestamps
    end
  end
end
