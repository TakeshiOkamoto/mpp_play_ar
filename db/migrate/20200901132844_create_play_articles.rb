class CreatePlayArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :play_articles do |t|
      t.string :title
      t.integer :play_category_id

      t.timestamps
    end
    
   add_index :play_articles, :play_category_id        
  end
end
