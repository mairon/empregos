class AddLatitudeAndLongitudeToEmpresa < ActiveRecord::Migration
  def change
    add_column :empresas, :latitude, :float
    add_column :empresas, :longitude, :float
  end
end
