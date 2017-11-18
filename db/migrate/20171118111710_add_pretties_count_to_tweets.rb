class AddPrettiesCountToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :pretties_count, :integer
  end
end
