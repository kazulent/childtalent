class Katachi < ActiveRecord::Base
  belongs_to :tweet, counter_cache: :katachis_count
  belongs_to :user
end
