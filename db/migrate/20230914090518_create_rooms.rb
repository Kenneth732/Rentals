class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :image_url
      t.string :room_number
      t.decimal :price

      t.timestamps
    end
  end
end
