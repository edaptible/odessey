class CreateEdgileValues < ActiveRecord::Migration[6.0]
  def change
    create_table :edgile_values do |t|
      t.string :edgile_value_name, null: false

      t.timestamps

      t.index :edgile_value_name,  unique: true
    end
  end
end
