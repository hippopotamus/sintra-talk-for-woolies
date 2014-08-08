class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.integer :suffering_index
      t.references :dictator

      t.timestamps
    end
  end
end
