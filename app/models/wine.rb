class Wine < ActiveRecord::Base
  belongs_to :winery, counter_cache: true
  validates :name, presence: true

end
