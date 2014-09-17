class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :cpfcnpj
      t.string :password_hash
      t.string :password_salt
      t.integer :tipo

      t.timestamps
    end
  end
end
