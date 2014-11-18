class CreateImporters < ActiveRecord::Migration
  def change
    create_table :importers do |t|
      t.string :name, null: false, default: ""
      t.timestamps
    end
  end
end
