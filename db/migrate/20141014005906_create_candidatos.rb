class CreateCandidatos < ActiveRecord::Migration
  def change
    create_table :candidatos do |t|
      t.string :nome, limit: 150
      t.integer :sexo
      t.string :rg, limit: 20
      t.string :uf, limit: 2
      t.string :cpf, limit: 20
      t.date :data_nascimento
      t.integer :idade
      t.string :nome_mae, limit: 150
      t.string :contato_cel, limit: 20
      t.integer :operadora_id
      t.string :contato_residencial, limit: 50
      t.string :email_01, limit: 50
      t.string :email_02, limit: 50
      t.string :email_03, limit: 50
      t.string :cep, limit: 10
      t.string :endereco, limit: 100
      t.string :numero, limit: 50
      t.string :complemento, limit: 150
      t.string :bairro, limit: 150
      t.string :regiao, limit: 150
      t.integer :state_id
      t.integer :city_id
      t.integer :pais
      t.integer :nacionalidade_id
      t.boolean :fumante
      t.boolean :pne
      t.integer :pne_tipo
      t.integer :png_grau
      t.text :pne_detalhe
      t.integer :estado_civil
      t.boolean :filhos
      t.integer :filhos_qtd
      t.integer :filhos_cacula

      t.timestamps
    end
  end
end
