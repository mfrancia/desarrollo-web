class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.integer :user_id
      t.integer :raze_id

      t.timestamps
    end
  end
end
