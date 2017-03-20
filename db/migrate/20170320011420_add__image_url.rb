class AddImageUrl < ActiveRecord::Migration[5.0]
  def change
  	add_column :foods, :url, :string
  end
end
