class AlterContestsLocationBannerImage < ActiveRecord::Migration[5.2]
  def change
    add_column :contests, :location_banner_image, :string
  end
end
