class CreateTurnIns < ActiveRecord::Migration
  def change
    create_table :turn_ins do |t|
      t.integer :user_id
      t.integer :assignment_id
      t.string :url
      t.boolean :completed

      t.timestamps
    end
  end
end
