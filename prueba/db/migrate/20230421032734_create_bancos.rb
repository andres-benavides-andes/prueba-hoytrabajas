class CreateBancos < ActiveRecord::Migration[7.0]
  def change
    create_table :bancos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
