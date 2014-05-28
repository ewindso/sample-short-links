class LinkSerializer < ActiveModel::Serializer
  attributes :id, :full_url, :code, :clicks, :short_url

  def short_url
    ENV['SERVER_URL'] + object.code
  end
end