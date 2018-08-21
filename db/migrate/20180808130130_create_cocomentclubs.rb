class CreateCocomentclubs < ActiveRecord::Migration[5.2]
  def change
    create_table :cocomentclubs do |t|
      t.string :content
      t.belongs_to :club
      t.belongs_to :user

      t.timestamps
    end
  end
end
