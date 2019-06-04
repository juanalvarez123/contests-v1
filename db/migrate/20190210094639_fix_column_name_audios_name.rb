class FixColumnNameAudiosName < ActiveRecord::Migration[5.2]
  def self.up
    rename_column :audios, :name, :original_name
  end

  def self.down
    rename_column :audios, :original_name, :name
  end
end