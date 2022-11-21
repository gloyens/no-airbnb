class CreatePlanets < ActiveRecord::Migration[7.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :description
      t.integer :size
      t.string :image_url
      t.integer :population
      t.integer :rating
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
