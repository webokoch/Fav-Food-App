class AddFieldToFood < ActiveRecord::Migration[6.0]
  def change
    add_reference :foods, :user, null: false, foreign_key: true
  end
end
