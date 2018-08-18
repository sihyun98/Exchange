class AddImageToInfo < ActiveRecord::Migration[5.2]
  def change
    add_column :infos, :image, :string
  end
end
