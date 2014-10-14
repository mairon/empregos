class CreateIdiomas < ActiveRecord::Migration
  def change
    create_table :idiomas do |t|
      t.string :nome, limit: 150
      t.boolean :status

      t.timestamps
    end
  end
end
