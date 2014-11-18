class CreateIdiomasVagas < ActiveRecord::Migration
  def change
    create_table :idiomas_vagas do |t|
      t.integer :vaga_id
      t.integer :idioma_id
      t.integer :nivel

      t.timestamps
    end
  end
end
