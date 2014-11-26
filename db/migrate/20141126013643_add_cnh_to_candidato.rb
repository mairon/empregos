class AddCnhToCandidato < ActiveRecord::Migration
  def change
    add_column :candidatos, :cnh, :integer
    add_column :candidatos, :veiculo_proprio, :boolean
  end
end
