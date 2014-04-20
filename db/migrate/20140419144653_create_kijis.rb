class CreateKijis < ActiveRecord::Migration
  def change
    create_table :kijis do |t|
      t.references :slot_name, index: true
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
