class AddSortOrderToEvents < ActiveRecord::Migration
  def change
    add_column :events, :sort_order, :integer

    Meet::DEFAULT_EVENT_NAMES.each_with_index do |event_name, index|
      e = Event.where(name: event_name).first
      e.sort_order = index
      e.save
    end
  end
end
