class CreateCandidatoIdiomas < ActiveRecord::Migration
  def change
    create_table :candidato_idiomas do |t|
      t.integer :candidato_id
      t.integer :idioma_id
      t.integer :estado

      t.timestamps
    end
  end
end
