class AddIndexesForTables < ActiveRecord::Migration
  def self.up
    add_index :wines, :id
    add_index :wines, :winery_id
    add_index :wines, :name
    add_index :wineries, :id
    add_index :wineries, :importer_id
    add_index :wineries, :name
    add_index :importers, :id
    add_index :importers, :name
  end

  def self.down
    remove_index :wines, :id
    remove_index :wines, :winery_id
    remove_index :wines, :name
    remove_index :wineries, :id
    remove_index :wineries, :importer_id
    remove_index :wineries, :name
    remove_index :importers, :id
    remove_index :importers, :name
  end
end
