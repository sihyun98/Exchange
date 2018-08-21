class CreateCocomatchings < ActiveRecord::Migration[5.2]
  def change
    create_table :cocomatchings do |t|
      t.string :content
      t.belongs_to :commentmatching
     t.integer :commentmatching_id

      t.timestamps
    end
  end
end
