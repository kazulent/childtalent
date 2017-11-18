class Pretty < ActiveRecord::Base
  belongs_to :tweet, counter_cache: :pretties_count
  belongs_to :user
end
