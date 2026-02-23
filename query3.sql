-- Mendapatkan director, berapa genre yang di-direct
SELECT directors.id, directors.first_name AS "First Name", directors.last_name AS "Last Name", COUNT(directors_genres.genre) AS "How Many Genre"
FROM directors INNER JOIN directors_genres ON directors_genres.director_id = directors.id
GROUP BY directors.id, directors.first_name, directors.last_name;

-- Mendapatkan actors yang memiliki roles lebih dari 5
SELECT actors.id, actors.first_name, COUNT(roles.role) AS "Jumlah_Role"
FROM roles LEFT JOIN actors ON roles.actor_id = actors.id
GROUP BY actors.id, actors.first_name
HAVING COUNT(roles.role) > 5;

-- Mendapatkan directors paling produktif sepanjang masa
SELECT directors.id, directors.first_name, directors.last_name, COUNT(movies.name) AS "Jumlah Movie"
FROM directors INNER JOIN movies_directors ON movies_directors.director_id = directors.id INNER JOIN movies ON movies.id = movies_directors.movie_id
GROUP BY directors.id, directors.first_name, directors.last_name
ORDER BY "Jumlah Movie" DESC
LIMIT 10;

-- Mendapatkan tahun tersibuk sepanjang masa
SELECT movies.year, COUNT(movies.id) AS "Jumlah Movie"
FROM movies
GROUP BY movies.year
ORDER BY "Jumlah Movie" DESC
LIMIT 10;

-- Mendapatkan movies dengan genres yang dibutuhkan menjadi 1 column (value dipisahkan dengan comma) dengan string_agg
SELECT movies.id, movies.name, string_agg(movies_genres.genre , ',' )
FROM movies INNER JOIN movies_genres ON movies_genres.movie_id = movies.id
GROUP BY movies.id, movies.name;