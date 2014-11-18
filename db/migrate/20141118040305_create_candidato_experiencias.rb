class CreateCandidatoExperiencias < ActiveRecord::Migration
  def change
    create_table :candidato_experiencias do |t|
      t.integer :candidato_id
      t.string :empresa_nome
      t.integer :cargo_id
      t.text :descricao_ativ
      t.integer :state_id
      t.integer :city_id
      t.integer :inicio_mes
      t.integer :inicio_ano
      t.integer :final_mes
      t.integer :final_ano
      t.integer :atual

      t.timestamps
    end
  end
end
