class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :name
      t.integer :order
      t.references :tournament, index: true

      t.timestamps
    end
  end
end
