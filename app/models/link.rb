class Link < ActiveRecord::Base
  before_create :generate_code

  validates :full_url, :url=>true

  private
  def generate_code
    self.code = loop do
      code = SecureRandom.hex(2)
      break code unless Link.exists?(code:code)
    end
  end
end
