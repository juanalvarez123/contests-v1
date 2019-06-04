class AlterAudios < ActiveRecord::Migration[5.2]
  def change
    add_column :audios, :location_original_audio, :string
    add_column :audios, :location_converted_audio, :string
  end
end
