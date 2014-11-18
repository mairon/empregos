class CreateVagas < ActiveRecord::Migration
  def change
    create_table :vagas do |t|
      t.integer :tipo_vaga
      t.integer :comercial_tipo
      t.integer :periodo
      t.integer :empresa_id
      t.integer :cargo_id
      t.integer :numero_vagas
      t.integer :sexo
      t.boolean :pne
      t.integer :estado_civil
      t.integer :outros_detalhes_candito
      t.integer :escolaridade
      t.string :area_tecnologo
      t.string :area_superior
      t.integer :status_escolaridade
      t.integer :cursando_periodo
      t.integer :experiencia
      t.text :conhecimentos_desejaveis

      t.timestamps
    end
  end
end
