class AddObsToCandidatos < ActiveRecord::Migration
  def change
    add_column :candidatos, :obs, :text
  end
end
