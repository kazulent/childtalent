class CreatePretties < ActiveRecord::Migration
  def change
    create_table :pretties do |t|
      t.integer     :user_id
      t.integer     :tweet_id
      t.timestamps
    end
  end
end
