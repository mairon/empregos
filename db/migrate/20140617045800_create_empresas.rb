class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :cnpj, limit: 15
      t.integer :ramo_id
      t.string :razao_social, limit: 100
      t.string :nome_fantasia, limit: 100
      t.string :cep, limit: 50
      t.string :endereco, limit: 100
      t.string :numero, limit: 10
      t.string :entrev_numero, limit: 10
      t.string :complemento, limit: 200
      t.string :regiao, limit: 150
      t.integer :state_id
      t.integer :city_id
      t.text :referencia, limit: 200
      t.string :fone01, limit: 20
      t.string :ramal01, limit: 5
      t.string :fone02, limit: 20
      t.string :ramal02, limit: 5
      t.string :fone03, limit: 20
      t.string :ramal03, limit: 5
      t.string :responsavel, limit: 50
      t.string :fone_resp, limit: 20
      t.string :email_receb, limit: 50
      t.string :site, limit: 150
      t.integer :unidade
      t.integer :endero_entrevista
      t.string :entrev_cep, limit: 50
      t.string :entrev_endereco, limit: 100
      t.string :entrev_complemento, limit: 200
      t.string :entrev_regiao, limit: 150
      t.integer :entrev_state_id
      t.integer :entrev_city_id
      t.text :entrev_referencia, limit: 100
      t.text :entrev_responsavel, limit: 100
      t.string :entrev_fone_resp, limit: 20
      t.string :entev_ramal_resp, limit: 5
      t.string :ramal_resp, limit: 50
      t.string :entrev_email, limit: 50
      t.string :entrev_emai2, limit: 50
      t.boolean :receb_noticia_sms
      t.boolean :receb_noticia_email

      t.timestamps
    end
  end
end
