class FixColumnName < ActiveRecord::Migration[5.2]
  def self.up
    rename_column :audios, :contests_id, :contest_id
  end

  def self.down
    rename_column :audios, :contest_id, :contests_id
  end
end