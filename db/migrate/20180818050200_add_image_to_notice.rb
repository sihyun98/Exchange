class AddImageToNotice < ActiveRecord::Migration[5.2]
  def change
    add_column :notices, :image, :string
  end
end
