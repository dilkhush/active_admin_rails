class AddWinesCountToWinery < ActiveRecord::Migration
  def self.up
    add_column :wineries, :wines_count, :integer, default: 0
  end

  def self.down
    remove_column :wineries, :wines_count
  end
end
