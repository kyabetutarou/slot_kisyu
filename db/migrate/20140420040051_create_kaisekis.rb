class CreateKaisekis < ActiveRecord::Migration
  def change
    create_table :kaisekis do |t|
      t.string :title
      t.text :kiji
      t.references :slot_name, index: true

      t.timestamps
    end
  end
end
