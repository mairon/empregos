class AddObsToVagas < ActiveRecord::Migration
  def change
    add_column :vagas, :obs, :text
  end
end
