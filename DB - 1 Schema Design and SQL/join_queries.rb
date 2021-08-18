require 'sqlite3'

def detailed_tracks(db)
  # TODO: return the list of tracks with their allum and artist.
  query = <<-SQL
  SELECT tracks.name, albums.title, artists.name
  FROM artists
  JOIN albums ON artists.id = albums.artist_id
  JOIN tracks ON albums.id = tracks.album_id
  SQL
  rows = db.execute(query)
end

def stats_on(db, genre_name)
  # TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
  result = db.execute("SELECT COUNT(*), AVG(tracks.milliseconds)/60000
    FROM tracks JOIN genres ON tracks.genre_id = genres.id
    WHERE genres.name = '#{genre_name}'")
  { category: genre_name, number_of_songs: result.first.first, avg_length: result.first.last.round(2) }
end

def top_five_artists(db, genre_name)
  # TODO: return list of top 5 artists with the most songs for a given genre.
  query = <<-SQL
  SELECT artists.id, artists.name, COUNT(*) AS c FROM artists
  INNER JOIN albums ON albums.artist_id = artists.id
  INNER JOIN tracks ON tracks.album_id = albums.id
  INNER JOIN genres ON tracks.genre_id = genres.id
  WHERE genres.name = '#{genre_name}'
  GROUP BY artists.name
  ORDER BY c DESC
  LIMIT 5
  SQL
  db.execute(query)
end
