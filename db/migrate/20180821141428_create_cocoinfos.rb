class CreateCocoinfos < ActiveRecord::Migration[5.2]
  def change
    create_table :cocoinfos do |t|
      t.string :content
      t.belongs_to :commentinfo
      t.integer :commentinfo_id
      t.belongs_to :user

      t.timestamps
    end
  end
end
