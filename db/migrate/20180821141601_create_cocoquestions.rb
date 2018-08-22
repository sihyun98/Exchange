class CreateCocoquestions < ActiveRecord::Migration[5.2]
  def change
    create_table :cocoquestions do |t|
      t.string :content
      t.belongs_to :commentquestion
      t.integer :commentquestion_id
      t.belongs_to :user

      t.timestamps
    end
  end
end
