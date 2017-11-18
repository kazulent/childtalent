class RemoveIrosCountToTweets < ActiveRecord::Migration
  def change
    remove_column :tweets, :Iros_count, :integer
  end
end
