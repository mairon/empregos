class AddContatoRecadoToCandidatos < ActiveRecord::Migration
  def change
    add_column :candidatos, :contato_recado, :string, limit: 25
    add_column :candidatos, :nome_recado, :string, limit: 150
    add_column :candidatos, :gra_pare_recado, :string, limit: 150
  end
end