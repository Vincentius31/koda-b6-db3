-- Mencari movie dengan tahun rilis lebih dari tahun 2000

SELECT "id", "name", "year"
FROM movies
WHERE year > 2000
ORDER BY year ASC;

-- Mencari actors dengan akhiran nama 's'

SELECT "id", "first_name", "last_name"
FROM actors
WHERE "first_name" LIKE '%s';

-- Mencari movie dengan rating diantar 5 dan 7 dan tahun rilis 2004 sampai 2006

SELECT "id", "name", "year", "rankscore"
FROM movies
WHERE "rankscore" >= 5 AND "rankscore" <= 7 AND "year" >= 2004 AND "year" <= 2006
ORDER BY rankscore ASC;

-- Menghitung jumlah movie dengan rating 6
SELECT COUNT("id")
FROM movies
WHERE rankscore = 6;