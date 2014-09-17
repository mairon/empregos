class CreateConvenios < ActiveRecord::Migration
  def change
    create_table :convenios do |t|
      t.string :nome
      t.boolean :status

      t.timestamps
    end
  end
end
