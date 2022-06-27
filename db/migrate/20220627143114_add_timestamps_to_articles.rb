class AddTimestampsToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :just_because_timestamp, :datetime
  end
end
