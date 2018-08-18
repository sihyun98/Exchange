class AddImageToMatching < ActiveRecord::Migration[5.2]
  def change
    add_column :matchings, :image, :string
  end
end
