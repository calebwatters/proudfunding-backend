class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :image1_url
      t.string :image2_url
      t.string :image3_url
      t.integer :project_id

      t.timestamps
    end
  end
end
