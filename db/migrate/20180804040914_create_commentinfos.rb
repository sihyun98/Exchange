class CreateCommentinfos < ActiveRecord::Migration[5.2]
  def change
    create_table :commentinfos do |t|
      t.string :content
      t.belongs_to :info  
      t.integer :info_id

      t.timestamps
    end
  end
end
