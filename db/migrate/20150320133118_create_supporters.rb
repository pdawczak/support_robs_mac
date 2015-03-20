class CreateSupporters < ActiveRecord::Migration
  def change
    create_table :supporters do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
