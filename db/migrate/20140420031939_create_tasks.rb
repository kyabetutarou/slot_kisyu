class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.references :slot_name, index: true

      t.timestamps
    end
  end
end
