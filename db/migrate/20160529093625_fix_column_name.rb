class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :statistcs, :callname, :cellname
  end
end
