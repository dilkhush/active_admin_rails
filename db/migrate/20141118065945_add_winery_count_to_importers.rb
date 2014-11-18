class AddWineryCountToImporters < ActiveRecord::Migration
  def self.up
    add_column :importers, :wineries_count, :integer, default: 0
  end

  def self.down
    remove_column :importers, :wineries_count
  end
end
