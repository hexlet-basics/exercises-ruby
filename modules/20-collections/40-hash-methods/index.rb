# frozen_string_literal: true

# BEGIN
def plainify(data)
  result = []
  data.each_pair do |band_name, songs|
    songs.each do |song_name|
      result << { band: band_name, song: song_name }
    end
  end
  result
  # The Ruby Way
  # data.keys.flat_map do |band_name|
  #   data[band_name].map { |song_name| { band: band_name, song: song_name } }
  # end
end
# END
