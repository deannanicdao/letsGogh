class AddDetailsToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :buyer_username, :string
    add_column :orders, :seller_username, :string
    add_column :orders, :item_id, :string
    remove_column :orders, :user_id, :bigint
  end
end
