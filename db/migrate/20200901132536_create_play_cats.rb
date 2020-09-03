class CreatePlayCats < ActiveRecord::Migration[6.0]
  def change
    create_table :play_cats do |t|
      t.string :name
      t.integer :play_owner_id

      t.timestamps
    end
    
    add_index :play_cats, :play_owner_id       
  end
end
