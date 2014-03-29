class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.integer :year
      t.date :selection_sunday

      t.timestamps
    end
  end
end
