class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :product_name
      t.string :order_number
      t.datetime :delivery_date
      t.integer :quantity
      t.string :process
      t.text :remarks

      t.timestamps
    end
  end
end
