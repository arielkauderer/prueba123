class RemoveClassIdFromClassVideos < ActiveRecord::Migration[5.2]
  def change
    remove_column :class_videos, :class_id, :integer
  end
end
