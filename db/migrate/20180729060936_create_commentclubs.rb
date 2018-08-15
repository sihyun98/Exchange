class CreateCommentclubs < ActiveRecord::Migration[5.2]
  def change
    create_table :commentclubs do |t|
      t.string :content
      t.belongs_to :user
      t.belongs_to :club
     

      
      t.timestamps
    end
  end
end
