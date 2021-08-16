require 'sqlite3'

def artist_count(db)
  # TODO: use `db` to execute an SQL query against the database.
  results = db.execute("SELECT COUNT(*) FROM artists")
  return results.flatten.first
end

def number_of_rows(db, table_name)
  # TODO: count number of rows in table table_name
  results = db.execute("SELECT COUNT(*) FROM #{table_name}")
  return results.flatten.first
end

def sorted_artists(db)
  # TODO: return array of artists' names sorted alphabetically
  results = db.execute("SELECT name FROM artists ORDER BY name ASC")
  return results.flatten
end

def love_tracks(db)
  # TODO: return array of love songs' names
  results = db.execute("SELECT name FROM tracks WHERE name LIKE '%Love%'")
  return results.flatten
end

def long_tracks(db, min_length)
  # TODO: return an array of tracks' names verifying: duration > min_length (minutes) sorted by length (ascending)
  length = min_length.to_f * 60_000
  length = length.to_s
  results = db.execute("SELECT name FROM tracks WHERE milliseconds > #{length} ORDER BY milliseconds ASC")
  return results.flatten
end
