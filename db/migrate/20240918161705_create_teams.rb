class CreateTeams < ActiveRecord::Migration[7.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :league
      t.integer :wins
      t.integer :losses

      t.timestamps
    end
  end
end
