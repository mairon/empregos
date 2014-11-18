class AddCursoIdToVagas < ActiveRecord::Migration
  def change
    add_column :vagas, :curso_id, :integer
  end
end
