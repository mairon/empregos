class CreateNacionalidades < ActiveRecord::Migration
  def change
    create_table :nacionalidades do |t|
      t.string :nome, limit: 150

      t.timestamps
    end
  end
end
