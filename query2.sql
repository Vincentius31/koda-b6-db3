-- Melakukan join directors dan genres ke table movies, limit keluaran sebanyak 50

SELECT movies.id AS "id", movies.name AS "Nama Film", movies_genres.genre AS "Genre", 
directors.first_name AS "Director Nama Depan", directors.last_name AS "Director Nama Belakang"
FROM movies JOIN movies_directors ON movies.id = movies_directors.movie_id 
JOIN movies_genres ON movies_genres.movie_id = movies.id JOIN directors ON directors.id = movies_directors.director_id
LIMIT 50;

-- Melakukan join movies dan roles berdasarkan table actors

SELECT actors.id AS "id", actors.first_name AS "Nama Depan Actor", actors.last_name AS "Nama Belakang Actor", movies.name AS "Nama Movie"
FROM actors JOIN roles ON roles.actor_id = actors.id JOIN movies ON roles.movie_id = movies.id;