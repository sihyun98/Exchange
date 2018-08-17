class CreateCommentquestions < ActiveRecord::Migration[5.2]
  def change
    create_table :commentquestions do |t|
      t.string :content
      t.belongs_to :question
      t.belongs_to :user

      t.timestamps
    end
  end
end
