class CreateBancos < ActiveRecord::Migration[7.0]
  def change
    create_table :bancos, id: :uuid  do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
