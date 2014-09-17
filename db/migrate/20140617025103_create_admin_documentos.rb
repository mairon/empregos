class CreateAdminDocumentos < ActiveRecord::Migration
  def change
    create_table :admin_documentos do |t|
      t.string :nome, limit: 150
      t.boolean :status

      t.timestamps
    end
  end
end
