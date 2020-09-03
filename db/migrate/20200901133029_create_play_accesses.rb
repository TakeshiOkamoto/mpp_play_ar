class CreatePlayAccesses < ActiveRecord::Migration[6.0]
  def change
    create_table :play_accesses do |t|
      t.integer :value
      t.integer :play_article_id

      t.timestamps
    end
    add_index :play_accesses, :play_article_id     
    
  end
end
