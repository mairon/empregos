class AddTipoVagaToCandidatoExperiencia < ActiveRecord::Migration
  def change
    add_column :candidato_experiencias, :tipo_vaga_id, :integer
  end
end
