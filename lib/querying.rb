def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year
  FROM books
  WHERE series_id=1
  ORDER BY books.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto
  FROM characters
  ORDER BY length(characters.motto) DESC
  LIMIT 1;"
end

def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, count(characters.species)
  FROM characters
  GROUP BY characters.species
  ORDER BY count(characters.species) DESC
  LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM authors
  INNER JOIN series
  ON authors.id=series.author_id
  INNER JOIN subgenres
  ON series.subgenre_id=subgenres.id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title
  FROM characters
  INNER JOIN series
  ON characters.series_id=series.id
  AND characters.species='human'
  GROUP BY series.title
  ORDER BY count(series.title) DESC
  LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, count(characters.name)
  FROM character_books
  INNER JOIN characters
  ON character_books.character_id=characters.id
  GROUP BY character_books.character_id
  ORDER BY count(characters.name) DESC, characters.name ASC;"
end
