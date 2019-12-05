class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :image_url
      t.string :title
      t.string :description
      t.string :ingredients
      t.string :prep
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
