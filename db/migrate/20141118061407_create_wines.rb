class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :name, null: false, default: ""
      t.belongs_to :winery
      t.timestamps
    end
  end
end
