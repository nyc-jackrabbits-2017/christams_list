class AddColumToGifts < ActiveRecord::Migration
  def change
    add_column :gifts, :user_id, :integer
  end
end
