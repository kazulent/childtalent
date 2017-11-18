class Iro < ActiveRecord::Base
  belongs_to :tweet, counter_cache: :iros_count
  belongs_to :user
end
