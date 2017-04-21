require('minitest/autorun')
require('minitest/rg')
require_relative('../song')



class TestSong < MiniTest::Test

  def test_song_has_a_name
    song = Song.new("Young and Beautiful")
    assert_equal("Young and Beautiful", song.name)
  end

end