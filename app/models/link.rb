class Link < ActiveRecord::Base
  validates :full_url, :url=>true
end
