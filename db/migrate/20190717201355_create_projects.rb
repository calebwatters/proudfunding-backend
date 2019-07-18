class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :company_name
      t.string :company_url
      t.string :image1_url
      t.string :image2_url
      t.string :image3_url
      t.integer :user_id
      t.integer :funding_goal
      t.integer :current_funding

      t.timestamps
    end
  end
end
