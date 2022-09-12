class RemoveSumTotalFromCarts < ActiveRecord::Migration[6.1]
  def change
    remove_column :carts, :sum_total
  end
end
