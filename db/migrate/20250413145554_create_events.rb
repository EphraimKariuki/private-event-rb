class CreateEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.date :time
      t.string :location

      t.timestamps
    end
  end
end
