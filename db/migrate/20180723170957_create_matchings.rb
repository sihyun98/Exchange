class CreateMatchings < ActiveRecord::Migration[5.2]
  def change
    create_table :matchings do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.belongs_to :user

      t.timestamps
    end
  end
end
