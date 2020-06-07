class CreateSchools < ActiveRecord::Migration[6.0]
  def change
    create_table :schools do |t|
      t.string   :school_name, null: false

      t.references :admin,  null: false, foreign_key: true

      t.timestamps

      t.index :school_name, unique: true
    end
  end
end
