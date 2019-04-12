class AddPurchasedToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_column :order_items, :purchased, :boolean
  end
end
