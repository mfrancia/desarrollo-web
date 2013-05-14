class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :telefono
      t.integer :saldo

      t.timestamps
    end
  end
end
