class AlterAudiosAddProcessAttempts < ActiveRecord::Migration[5.2]
  def change
    add_column :audios, :process_attempts, :integer, default: 0
  end
end
