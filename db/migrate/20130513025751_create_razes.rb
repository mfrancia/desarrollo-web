class CreateRazes < ActiveRecord::Migration
  def change
    create_table :razes do |t|
      t.string :name

      t.timestamps
    end
  end
end
