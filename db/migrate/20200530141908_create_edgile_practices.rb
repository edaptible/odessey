class CreateEdgilePractices < ActiveRecord::Migration[6.0]
  def change
    create_table :edgile_practices do |t|
      t.string :edgile_practice_name, null: false

      t.timestamps

      t.index :edgile_practice_name,  unique: true
    end
  end
end
