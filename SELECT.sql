SELECT album, year_of_release FROM albums
WHERE year_of_release = 2018;

SELECT song, duration FROM songs ORDER BY duration DESC LIMIT 1;

SELECT song, duration FROM songs
WHERE duration >= '00:03:30';

SELECT album, year_of_release FROM collections
WHERE year_of_release >= 2018 and year_of_release <= 2020;

SELECT executor FROM executors
WHERE executor not like '% %';


SELECT song FROM songs
WHERE string_to_array(lower(song), ' ') && array['мой', 'my'];