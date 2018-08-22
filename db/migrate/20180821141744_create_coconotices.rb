class CreateCoconotices < ActiveRecord::Migration[5.2]
  def change
    create_table :coconotices do |t|
      t.string :content
      t.belongs_to :comment
      t.integer :comment_id
      t.belongs_to :user

      t.timestamps
    end
  end
end
