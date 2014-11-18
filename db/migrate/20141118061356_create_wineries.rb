class CreateWineries < ActiveRecord::Migration
  def change
    create_table :wineries do |t|
      t.string :name, null: false, default: ""
      t.belongs_to :importer
      t.timestamps
    end
  end
end
