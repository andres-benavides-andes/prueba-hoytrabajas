class CreateProveedors < ActiveRecord::Migration[7.0]
  def change
    create_table :proveedors, id: :uuid do |t|
      t.string :nombre
      t.string :nit
      t.string :contacto
      t.string :celular
      t.references :banco, null: false, foreign_key: true, type: :uuid
      t.string :numero_cuenta

      t.timestamps
    end
  end
end
