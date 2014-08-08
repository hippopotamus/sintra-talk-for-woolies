class CreateDictators < ActiveRecord::Migration
  def change
    create_table :dictators do |t|
      t.string :name
      t.string :favorite_food, default: "Spaghetti"

      t.timestamps
    end
  end
end
