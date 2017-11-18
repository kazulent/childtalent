class AddIrosCountToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :iros_count, :integer
  end
end
