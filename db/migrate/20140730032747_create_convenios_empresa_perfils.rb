class CreateConveniosEmpresaPerfils < ActiveRecord::Migration
  def change
    create_table :convenios_empresa_perfils do |t|
      t.integer :empresa_perfil_id
      t.integer :convenio_id

      t.timestamps
    end
  end
end
