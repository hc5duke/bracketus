class CreateBrackets < ActiveRecord::Migration
  def change
    create_table :brackets do |t|
      t.string :name
      t.integer :final_game_score
      t.belongs_to :tournament, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
