class Add < ActiveRecord::Migration
  def change
  	add_column :empresas, :ponto_referencia, :text
  end
end
