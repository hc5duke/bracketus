class CreateSeeds < ActiveRecord::Migration
  def change
    create_table :seeds do |t|
      t.integer :seed
      t.references :team, index: true
      t.references :region, index: true
      t.references :tournament, index: true

      t.timestamps
    end
  end
end
