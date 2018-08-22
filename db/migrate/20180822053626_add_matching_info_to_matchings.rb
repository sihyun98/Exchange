class AddMatchingInfoToMatchings < ActiveRecord::Migration[5.2]
  def change
    add_column :matchings, :check, :string
  end
end
