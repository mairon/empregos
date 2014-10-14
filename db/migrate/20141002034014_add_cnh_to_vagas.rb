class AddCnhToVagas < ActiveRecord::Migration
  def change
    add_column :vagas, :cnh, :integer
    add_column :vagas, :veiculo_proprio, :boolean
  end
end
