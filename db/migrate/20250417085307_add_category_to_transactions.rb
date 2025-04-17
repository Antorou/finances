class AddCategoryToTransactions < ActiveRecord::Migration[7.1]
  def change
    add_column :transactions, :category, :string
  end
end
