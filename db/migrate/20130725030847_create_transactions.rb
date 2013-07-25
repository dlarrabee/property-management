class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.float  :amount
      t.string :description
      t.date   :transaction_date
      t.timestamps
    end
  end
end
