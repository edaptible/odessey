class CreateAgileValues < ActiveRecord::Migration[6.0]
  def change
    create_table :agile_values do |t|
      t.string :agile_value_name, null: false

      t.timestamps

      t.index :agile_value_name,  unique: true
    end
  end
end
