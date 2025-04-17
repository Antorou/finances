class CreateTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :transactions do |t|
      t.string :name
      t.string :description
      t.decimal :amount
      t.integer :date

      t.timestamps
    end
  end
end
