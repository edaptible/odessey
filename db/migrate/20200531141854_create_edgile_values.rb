class CreateEdgileValues < ActiveRecord::Migration[6.0]
  def change
    create_table :edgile_values do |t|
      t.string :value_name

      t.timestamps
    end
  end
end
