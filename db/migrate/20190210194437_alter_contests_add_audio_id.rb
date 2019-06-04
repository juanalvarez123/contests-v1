class AlterContestsAddAudioId < ActiveRecord::Migration[5.2]
  def change
    add_column :contests, :winner_audio_id, :integer
  end
end
