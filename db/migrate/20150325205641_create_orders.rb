class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :user_id
    end
  end
end
