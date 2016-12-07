class Gifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
