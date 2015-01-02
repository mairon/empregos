class AddDivulgaSalarioToVagas < ActiveRecord::Migration
  def change
    add_column :vagas, :divulga_salario, :integer
  end
end
