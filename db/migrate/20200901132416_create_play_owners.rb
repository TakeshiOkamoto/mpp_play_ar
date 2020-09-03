class CreatePlayOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :play_owners do |t|
      t.string :name

      t.timestamps
    end
  end
end
