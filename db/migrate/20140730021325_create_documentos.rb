class CreateDocumentos < ActiveRecord::Migration
  def change
    create_table :documentos do |t|
      t.string :nome
      t.boolean :status

      t.timestamps
    end
  end
end
