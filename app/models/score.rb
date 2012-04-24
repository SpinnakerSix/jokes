class Score < ActiveRecord::Base
	belongs_to :joke
  attr_accessible :down, :item_id, :up
end
