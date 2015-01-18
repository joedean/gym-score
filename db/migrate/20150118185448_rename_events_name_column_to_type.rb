class RenameEventsNameColumnToType < ActiveRecord::Migration
  def change
    rename_column :events, :name, :type
  end
end
