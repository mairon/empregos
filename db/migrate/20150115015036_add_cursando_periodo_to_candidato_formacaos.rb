class AddCursandoPeriodoToCandidatoFormacaos < ActiveRecord::Migration
  def change
    add_column :candidato_formacaos, :cursando_periodo, :integer
  end
end
