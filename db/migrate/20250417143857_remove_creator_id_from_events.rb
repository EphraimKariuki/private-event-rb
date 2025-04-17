class RemoveCreatorIdFromEvents < ActiveRecord::Migration[8.0]
  def change
    remove_column :events, :creator_id, :bigint
  end
end
