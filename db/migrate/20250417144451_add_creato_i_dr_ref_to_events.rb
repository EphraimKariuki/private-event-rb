class AddCreatoIDrRefToEvents < ActiveRecord::Migration[8.0]
  def change
    add_reference :events, :creator, null: false, foreign_key: { to_table: :users }, index: true
  end
end
