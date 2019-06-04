class CreateAudios < ActiveRecord::Migration[5.2]
  def change
    create_table :audios do |t|
      t.string :name
      t.string :status
      t.string :observations
      t.references :participant, foreign_key: true
      t.references :contests, foreign_key: true

      t.timestamps
    end
  end
end
