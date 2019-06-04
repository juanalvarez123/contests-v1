class CreateContests < ActiveRecord::Migration[5.2]
  def change
    create_table :contests do |t|
      t.string :name
      t.string :banner_image_name
      t.date :date_init
      t.date :date_end
      t.numeric :prize_amount
      t.text :contest_text
      t.text :recommendations
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
