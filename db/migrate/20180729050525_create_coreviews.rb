class CreateCoreviews < ActiveRecord::Migration[5.2]
  def change
    create_table :coreviews do |t|
      t.string :content
      t.belongs_to :review
      t.integer :review_id


      t.timestamps
    end
  end
end
