class CreateEmpleados < ActiveRecord::Migration[6.0]
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.string :cargo

      t.timestamps
    end
  end
end
