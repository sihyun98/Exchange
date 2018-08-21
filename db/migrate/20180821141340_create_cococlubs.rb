class CreateCococlubs < ActiveRecord::Migration[5.2]
  def change
    create_table :cococlubs do |t|
      t.string :content
      t.belongs_to :cocomentclub
      t.integer :cocomentclub_id
      t.belongs_to :user
     

      t.timestamps
    end
  end
end
