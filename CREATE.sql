CREATE TABLE IF NOT EXISTS genres (
	genre_id SERIAL PRIMARY KEY,
	genre VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS executors (
	executor_id SERIAL PRIMARY KEY,
	executor VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS genres_artists (
	genre_id INTEGER REFERENCES genres(genre_id),
	executor_id INTEGER REFERENCES executors(executor_id),
	CONSTRAINT genres_id PRIMARY KEY (genre_id, executor_id)
);

CREATE TABLE IF NOT EXISTS albums (
	album_id SERIAL PRIMARY KEY,
	album VARCHAR(60) NOT NULL,
	year_of_release INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS albums_artists (
	executor_id INTEGER REFERENCES executors(executor_id),
	album_id INTEGER REFERENCES albums(album_id),
	CONSTRAINT albums_id PRIMARY KEY (executor_id, album_id)
);

CREATE TABLE IF NOT EXISTS songs (
	song_id SERIAL PRIMARY KEY,
	song VARCHAR(60) NOT NULL,
	duration TIME NOT NULL,
	album_id INTEGER REFERENCES albums(album_id)
);

CREATE TABLE IF NOT EXISTS collections (
	collection_id SERIAL PRIMARY KEY,
	album VARCHAR(60) NOT NULL,
	year_of_release INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS collection_songs (
	song_id INTEGER REFERENCES songs(song_id),
	collection_id INTEGER REFERENCES collections(collection_id),
	CONSTRAINT release_id PRIMARY KEY (song_id, collection_id)
);