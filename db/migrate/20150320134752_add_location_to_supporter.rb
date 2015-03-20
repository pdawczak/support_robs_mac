class AddLocationToSupporter < ActiveRecord::Migration
  def change
    add_column :supporters, :location, :string
  end
end
