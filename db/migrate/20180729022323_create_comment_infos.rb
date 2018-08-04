class CreateCommentInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_infos do |t|
      t.string :content

      t.timestamps
    end
  end
end
