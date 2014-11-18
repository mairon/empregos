class AddCargoIdToVagas < ActiveRecord::Migration
  def change
    add_column :vagas, :estagio_cursando, :integer
  end
end
