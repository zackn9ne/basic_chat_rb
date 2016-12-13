class CreateLines < ActiveRecord::Migration[5.0]
  def change
    create_table :lines do |t|
      t.string :username
      t.text :message

      t.timestamps
    end
  end
end
