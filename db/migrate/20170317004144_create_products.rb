class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :image
      t.text :description
      t.string :price
      t.belongs_to :category, index: true

      t.timestamps
    end
  end
end
