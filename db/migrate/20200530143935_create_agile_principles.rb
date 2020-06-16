class CreateAgilePrinciples < ActiveRecord::Migration[6.0]
  def change
    create_table :agile_principles do |t|
      t.string :agile_principle_name, null: false

      t.timestamps

      t.index :agile_principle_name,  unique: true
    end
  end
end
