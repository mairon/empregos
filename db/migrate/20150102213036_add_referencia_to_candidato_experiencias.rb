class AddReferenciaToCandidatoExperiencias < ActiveRecord::Migration
  def change
    add_column :candidato_experiencias, :referencia_nome, :string, limit: 150
    add_column :candidato_experiencias, :referencia_tel, :string, limit: 50
    add_column :candidato_experiencias, :referencia_ramal, :string, limit: 10
    add_column :candidato_experiencias, :periodo, :integer
    add_column :candidato_experiencias, :mes_ano, :integer
  end
end
