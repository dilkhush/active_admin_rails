class Winery < ActiveRecord::Base
  belongs_to :importer, counter_cache: true 
  has_many :wines
  validates :name, presence: true
end
