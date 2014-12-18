class AddFilhosMesAnosToCandidato < ActiveRecord::Migration
  def change
    add_column :candidatos, :filho_mes_ano, :integer
  end
end
