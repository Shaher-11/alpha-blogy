class AddAdmitToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :admin, :bolean, default: false
  end
end
