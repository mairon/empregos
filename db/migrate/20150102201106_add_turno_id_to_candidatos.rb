class AddTurnoIdToCandidatos < ActiveRecord::Migration
  def change
    add_column :candidatos, :turno_id, :integer
  end
end
