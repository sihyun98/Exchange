class CreateCocoreviews < ActiveRecord::Migration[5.2]
  def change
    create_table :cocoreviews do |t|
      t.string :content
      t.belongs_to :coreview
      t.integer :coreview_id
      t.belongs_to :user

      t.timestamps
    end
  end
end
