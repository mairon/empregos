class CreateDiasSemanasEmpresaPerfils < ActiveRecord::Migration
  def change
    create_table :dias_semanas_empresa_perfils do |t|
      t.integer :empresa_perfil_id
      t.integer :dias_semana_id

      t.timestamps
    end
  end
end
