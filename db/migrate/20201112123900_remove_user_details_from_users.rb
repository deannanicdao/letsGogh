class RemoveUserDetailsFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :first_name, :string
    remove_column :users, :last_name, :string
    remove_column :users, :dob, :date
  end
end
