class AddUniquenessToUsersEmail < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :email, :string, unique: true, default: "", null: false
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
