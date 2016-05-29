class CreateStatistcs < ActiveRecord::Migration
  def change
    create_table :statistcs do |t|
      t.string :callname
      t.date :date
      t.integer :accessability
      t.integer :retainability

      t.timestamps null: false
    end
  end
end
