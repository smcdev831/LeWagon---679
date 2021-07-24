require 'csv'
def most_successful(number, max_year, file_path)
  # TODO: return the `number` of most successful movies before `max_year`
  movie_list = []

  CSV.foreach(file_path) do |row|
    movie_list.push(name: row[0], year: row[1].to_i, earnings: row[2].to_i) if row[1].to_i < max_year.to_i
  end

  earnings_sort = movie_list.sort_by { |item| item[:earnings] }.reverse
  
  return earnings_sort[0, number]
end
