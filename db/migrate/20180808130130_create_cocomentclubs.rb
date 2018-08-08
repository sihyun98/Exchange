class CreateCocomentclubs < ActiveRecord::Migration[5.2]
  def change
    create_table :cocomentclubs do |t|
      t.string :content
      t.belongs_to :commentclub

      t.timestamps
    end
  end
end
