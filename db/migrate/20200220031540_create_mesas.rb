class CreateMesas < ActiveRecord::Migration[6.0]
  def change
    create_table :mesas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
