class CreateCommentmatchings < ActiveRecord::Migration[5.2]
  def change
    create_table :commentmatchings do |t|
      t.string :content
      t.belongs_to :matching

      t.timestamps
    end
  end
end