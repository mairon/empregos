class CreateDocumentosEmpresaPerfils < ActiveRecord::Migration
  def change
    create_table :documentos_empresa_perfils do |t|
      t.integer :empresa_perfil_id
      t.integer :documento_id

      t.timestamps
    end
  end
end
