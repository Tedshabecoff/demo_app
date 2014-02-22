class CreateSpacecats < ActiveRecord::Migration
  def change
    create_table :spacecats do |t|
      t.string :name
      t.integer :planets_visitd
      t.string :planet

      t.timestamps
    end
  end
end
