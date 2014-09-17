class AddUserIdToEmpresa < ActiveRecord::Migration
  def change
    add_column :empresas, :user_id, :integer
  end
end
