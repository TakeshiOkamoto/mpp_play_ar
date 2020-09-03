class CreatePlayPrefectures < ActiveRecord::Migration[6.0]
  def change
    create_table :play_prefectures do |t|
      t.string :name
      t.integer :play_owner_id

      t.timestamps
    end
    
    add_index :play_prefectures, :play_owner_id           
  end
end
