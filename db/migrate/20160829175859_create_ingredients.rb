class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.string :ingredient
      t.references :recipe_id, foreign_key: true

      t.timestamps
    end
  end
end
