class AddUserToOrderHistories < ActiveRecord::Migration[5.2]
  def change
    add_reference :order_histories, :user, foreign_key: true
  end
end
