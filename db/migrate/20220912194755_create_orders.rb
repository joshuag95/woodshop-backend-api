class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.boolean :confirmed

      t.timestamps
    end
  end
end
