class CreateTurnos < ActiveRecord::Migration
  def change
    create_table :turnos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
