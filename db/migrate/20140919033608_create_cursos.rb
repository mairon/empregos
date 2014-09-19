class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :nome
      t.boolean :status, defautl: true

      t.timestamps
    end
  end
end
