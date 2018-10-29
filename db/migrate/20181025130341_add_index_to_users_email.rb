class AddIndexToUsersEmail < ActiveRecord::Migration[5.1]
  def change
    add_column :users_name, :index, :integer
  end
end
