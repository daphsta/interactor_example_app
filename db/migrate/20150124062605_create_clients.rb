class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :abn

      t.references :sales_rep

      t.timestamps null: false
    end
  end
end
