class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :order_number
      t.integer :date
      t.references :customers, foreign_key: true

      t.timestamps
    end
  end
end
