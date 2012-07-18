class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
   
   #t.string :title (edit the file)
   #t.text :embed_code (editing to:t.text :body

   t.string :title
   t.text :embed_code
   
      t.text :body
      t.references :video
      
      t.timestamps
    end
  end
end
