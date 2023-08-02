class CreateCustomerSubs < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_subs do |t|
      t.references :subscription, foreign_key: true
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
