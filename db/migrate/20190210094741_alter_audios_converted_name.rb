class AlterAudiosConvertedName < ActiveRecord::Migration[5.2]
  def change
    add_column :audios, :converted_name, :string
  end
end
