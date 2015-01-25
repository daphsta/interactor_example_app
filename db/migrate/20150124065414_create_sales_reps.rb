class CreateSalesReps < ActiveRecord::Migration
  def change
    create_table :sales_reps do |t|
      t.string :first_name
      t.string :last_name
      t.string :area

      t.timestamps null: false
    end
  end
end
