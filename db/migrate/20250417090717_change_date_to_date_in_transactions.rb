class ChangeDateToDateInTransactions < ActiveRecord::Migration[7.1]
  def change
    change_column :transactions, :date, :date, using: 'to_timestamp(date)::date'
  end
end
