class CreateEdgilePractices < ActiveRecord::Migration[6.0]
  def change
    create_table :edgile_practices do |t|
      t.string :practice_name

      t.timestamps
    end
  end
end
