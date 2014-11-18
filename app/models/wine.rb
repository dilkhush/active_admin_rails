class Wine < ActiveRecord::Base
  belongs_to :winery
  validates :name, presence: true
end
