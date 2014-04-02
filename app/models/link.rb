class Link < ActiveRecord::Base
  before_create :generate_code

  validates :full_url, :url=>true

  private
  def generate_code
    self.code = SecureRandom.hex(10)
  end
end
