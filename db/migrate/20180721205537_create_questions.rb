class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :content
      t.belongs_to :user
      t.string :image_url

      t.timestamps
    end
  end
end
