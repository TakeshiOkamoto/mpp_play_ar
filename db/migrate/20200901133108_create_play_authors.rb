class CreatePlayAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :play_authors do |t|
      t.string :name
      t.integer :play_article_id

      t.timestamps
    end
    
    add_index :play_authors, :play_article_id  
  end
end
