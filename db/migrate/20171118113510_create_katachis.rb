class CreateKatachis < ActiveRecord::Migration
  def change
    create_table :katachis do |t|
      t.integer     :user_id
      t.integer     :tweet_id
      t.timestamps
    end
  end
end
