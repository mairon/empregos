class AddTipoVeiculoToCandidato < ActiveRecord::Migration
  def change
    add_column :candidatos, :tipo_veiculo, :integer
    add_column :vagas, :tipo_veiculo, :integer
  end
end
