class CreateSlotNames < ActiveRecord::Migration
  def change
    create_table :slot_names do |t|
      t.string :name
      t.integer :img
      t.date :dounyuu
      t.text :setumei

      t.timestamps
    end
  end
end
