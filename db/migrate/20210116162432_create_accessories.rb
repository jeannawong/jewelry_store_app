class CreateAccessories < ActiveRecord::Migration[6.0]
  def change
    create_table :accessories do |t|
      t.string :name
      t.integer :price
      t.string :image_url
      t.string :description

      t.timestamps
    end
  end
end
