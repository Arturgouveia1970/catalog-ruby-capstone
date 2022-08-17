require './item'

class MusicAlbum < Item
  attr_accessor :on_spotify, :name

  attr_reader :publish_date

  def initialize(publish_date, name, on_spotify)
    super(publish_date)

    @on_spotify = on_spotify.downcase == 'y'

    @name = name
  end

  private

  def can_be_archived?
    super && @on_spotify
  attr_accessor :on_spotify

  def initialize(on_spotify, publish_date)
    super(publish_date)
    @on_spotify = on_spotify
  end

  def can_be_archived?()
    true if super() && @on_spotify
  end
end
