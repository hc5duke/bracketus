class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :espn_id
      t.string :name
      t.string :espn_url
      t.string :espn_name
      t.string :cbs_abbr
      t.string :cbs_url
      t.string :cbs_name
      t.integer :cbs_id
      t.timestamps
    end
  end
end
