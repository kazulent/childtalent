class AddKatachisCountToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :katachis_count, :integer
  end
end
