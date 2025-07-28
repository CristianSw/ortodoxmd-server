-- Acest script Flyway va crea tabela și o va popula cu datele corecte.
-- Asigură-te că numele fișierului este V[număr]__descriere.sql, de exemplu V2__populate_audio_books.sql

CREATE SCHEMA IF NOT EXISTS media_schema;

-- Creăm tabela dacă nu există
CREATE TABLE IF NOT EXISTS media_schema.audio_books (
    id SERIAL PRIMARY KEY,
    title_ro VARCHAR(255),
    title_en VARCHAR(255),
    title_ru VARCHAR(255),
    author_ro VARCHAR(255),
    author_en VARCHAR(255),
    author_ru VARCHAR(255),
    file_path VARCHAR(255),
    lang VARCHAR(10) DEFAULT 'ro'
);

-- Inserăm datele pentru Evanghelia după Ioan
INSERT INTO media_schema.audio_books (title_ro, author_ro, file_path, lang) VALUES
('Evanghelia după Ioan, Capitolul 1', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_ioan/capitolul_01.mp3', 'ro'),
('Evanghelia după Ioan, Capitolul 2', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_ioan/capitolul_02.mp3', 'ro'),
('Evanghelia după Ioan, Capitolul 3', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_ioan/capitolul_03.mp3', 'ro'),
('Evanghelia după Ioan, Capitolul 4', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_ioan/capitolul_04.mp3', 'ro'),
('Evanghelia după Ioan, Capitolul 5', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_ioan/capitolul_05.mp3', 'ro'),
('Evanghelia după Ioan, Capitolul 6', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_ioan/capitolul_06.mp3', 'ro'),
('Evanghelia după Ioan, Capitolul 7', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_ioan/capitolul_07.mp3', 'ro'),
('Evanghelia după Ioan, Capitolul 8', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_ioan/capitolul_08.mp3', 'ro'),
('Evanghelia după Ioan, Capitolul 9', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_ioan/capitolul_09.mp3', 'ro'),
('Evanghelia după Ioan, Capitolul 10', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_ioan/capitolul_10.mp3', 'ro'),
('Evanghelia după Ioan, Capitolul 11', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_ioan/capitolul_11.mp3', 'ro'),
('Evanghelia după Ioan, Capitolul 12', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_ioan/capitolul_12.mp3', 'ro'),
('Evanghelia după Ioan, Capitolul 13', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_ioan/capitolul_13.mp3', 'ro'),
('Evanghelia după Ioan, Capitolul 14', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_ioan/capitolul_14.mp3', 'ro'),
('Evanghelia după Ioan, Capitolul 15', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_ioan/capitolul_15.mp3', 'ro'),
('Evanghelia după Ioan, Capitolul 16', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_ioan/capitolul_16.mp3', 'ro'),
('Evanghelia după Ioan, Capitolul 17', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_ioan/capitolul_17.mp3', 'ro'),
('Evanghelia după Ioan, Capitolul 18', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_ioan/capitolul_18.mp3', 'ro'),
('Evanghelia după Ioan, Capitolul 19', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_ioan/capitolul_19.mp3', 'ro'),
('Evanghelia după Ioan, Capitolul 20', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_ioan/capitolul_20.mp3', 'ro'),
('Evanghelia după Ioan, Capitolul 21', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_ioan/capitolul_21.mp3', 'ro');

-- Inserăm datele pentru Evanghelia după Luca
INSERT INTO media_schema.audio_books (title_ro, author_ro, file_path, lang) VALUES
('Evanghelia după Luca, Capitolul 1', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_luca/capitolul_01.mp3', 'ro'),
('Evanghelia după Luca, Capitolul 2', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_luca/capitolul_02.mp3', 'ro'),
('Evanghelia după Luca, Capitolul 3', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_luca/capitolul_03.mp3', 'ro'),
('Evanghelia după Luca, Capitolul 4', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_luca/capitolul_04.mp3', 'ro'),
('Evanghelia după Luca, Capitolul 5', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_luca/capitolul_05.mp3', 'ro'),
('Evanghelia după Luca, Capitolul 6', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_luca/capitolul_06.mp3', 'ro'),
('Evanghelia după Luca, Capitolul 7', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_luca/capitolul_07.mp3', 'ro'),
('Evanghelia după Luca, Capitolul 8', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_luca/capitolul_08.mp3', 'ro'),
('Evanghelia după Luca, Capitolul 9', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_luca/capitolul_09.mp3', 'ro'),
('Evanghelia după Luca, Capitolul 10', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_luca/capitolul_10.mp3', 'ro'),
('Evanghelia după Luca, Capitolul 11', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_luca/capitolul_11.mp3', 'ro'),
('Evanghelia după Luca, Capitolul 12', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_luca/capitolul_12.mp3', 'ro'),
('Evanghelia după Luca, Capitolul 13', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_luca/capitolul_13.mp3', 'ro'),
('Evanghelia după Luca, Capitolul 14', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_luca/capitolul_14.mp3', 'ro'),
('Evanghelia după Luca, Capitolul 15', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_luca/capitolul_15.mp3', 'ro'),
('Evanghelia după Luca, Capitolul 16', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_luca/capitolul_16.mp3', 'ro'),
('Evanghelia după Luca, Capitolul 17', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_luca/capitolul_17.mp3', 'ro'),
('Evanghelia după Luca, Capitolul 18', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_luca/capitolul_18.mp3', 'ro'),
('Evanghelia după Luca, Capitolul 19', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_luca/capitolul_19.mp3', 'ro'),
('Evanghelia după Luca, Capitolul 20', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_luca/capitolul_20.mp3', 'ro'),
('Evanghelia după Luca, Capitolul 21', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_luca/capitolul_21.mp3', 'ro'),
('Evanghelia după Luca, Capitolul 22', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_luca/capitolul_22.mp3', 'ro'),
('Evanghelia după Luca, Capitolul 23', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_luca/capitolul_23.mp3', 'ro'),
('Evanghelia după Luca, Capitolul 24', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_luca/capitolul_24.mp3', 'ro');

-- Inserăm datele pentru Evanghelia după Marcu
INSERT INTO media_schema.audio_books (title_ro, author_ro, file_path, lang) VALUES
('Evanghelia după Marcu, Capitolul 1', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_marcu/capitolul_01.mp3', 'ro'),
('Evanghelia după Marcu, Capitolul 2', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_marcu/capitolul_02.mp3', 'ro'),
('Evanghelia după Marcu, Capitolul 3', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_marcu/capitolul_03.mp3', 'ro'),
('Evanghelia după Marcu, Capitolul 4', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_marcu/capitolul_04.mp3', 'ro'),
('Evanghelia după Marcu, Capitolul 5', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_marcu/capitolul_05.mp3', 'ro'),
('Evanghelia după Marcu, Capitolul 6', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_marcu/capitolul_06.mp3', 'ro'),
('Evanghelia după Marcu, Capitolul 7', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_marcu/capitolul_07.mp3', 'ro'),
('Evanghelia după Marcu, Capitolul 8', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_marcu/capitolul_08.mp3', 'ro'),
('Evanghelia după Marcu, Capitolul 9', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_marcu/capitolul_09.mp3', 'ro'),
('Evanghelia după Marcu, Capitolul 10', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_marcu/capitolul_10.mp3', 'ro'),
('Evanghelia după Marcu, Capitolul 11', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_marcu/capitolul_11.mp3', 'ro'),
('Evanghelia după Marcu, Capitolul 12', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_marcu/capitolul_12.mp3', 'ro'),
('Evanghelia după Marcu, Capitolul 13', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_marcu/capitolul_13.mp3', 'ro'),
('Evanghelia după Marcu, Capitolul 14', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_marcu/capitolul_14.mp3', 'ro'),
('Evanghelia după Marcu, Capitolul 15', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_marcu/capitolul_15.mp3', 'ro'),
('Evanghelia după Marcu, Capitolul 16', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_marcu/capitolul_16.mp3', 'ro');

-- Inserăm datele pentru Evanghelia după Matei
INSERT INTO media_schema.audio_books (title_ro, author_ro, file_path, lang) VALUES
('Evanghelia după Matei, Capitolul 1', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_matei/capitolul_01.mp3', 'ro'),
('Evanghelia după Matei, Capitolul 2', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_matei/capitolul_02.mp3', 'ro'),
('Evanghelia după Matei, Capitolul 3', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_matei/capitolul_03.mp3', 'ro'),
('Evanghelia după Matei, Capitolul 4', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_matei/capitolul_04.mp3', 'ro'),
('Evanghelia după Matei, Capitolul 5', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_matei/capitolul_05.mp3', 'ro'),
('Evanghelia după Matei, Capitolul 6', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_matei/capitolul_06.mp3', 'ro'),
('Evanghelia după Matei, Capitolul 7', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_matei/capitolul_07.mp3', 'ro'),
('Evanghelia după Matei, Capitolul 8', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_matei/capitolul_08.mp3', 'ro'),
('Evanghelia după Matei, Capitolul 9', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_matei/capitolul_09.mp3', 'ro'),
('Evanghelia după Matei, Capitolul 10', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_matei/capitolul_10.mp3', 'ro'),
('Evanghelia după Matei, Capitolul 11', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_matei/capitolul_11.mp3', 'ro'),
('Evanghelia după Matei, Capitolul 12', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_matei/capitolul_12.mp3', 'ro'),
('Evanghelia după Matei, Capitolul 13', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_matei/capitolul_13.mp3', 'ro'),
('Evanghelia după Matei, Capitolul 14', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_matei/capitolul_14.mp3', 'ro'),
('Evanghelia după Matei, Capitolul 15', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_matei/capitolul_15.mp3', 'ro'),
('Evanghelia după Matei, Capitolul 16', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_matei/capitolul_16.mp3', 'ro'),
('Evanghelia după Matei, Capitolul 17', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_matei/capitolul_17.mp3', 'ro'),
('Evanghelia după Matei, Capitolul 18', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_matei/capitolul_18.mp3', 'ro'),
('Evanghelia după Matei, Capitolul 19', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_matei/capitolul_19.mp3', 'ro'),
('Evanghelia după Matei, Capitolul 20', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_matei/capitolul_20.mp3', 'ro'),
('Evanghelia după Matei, Capitolul 21', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_matei/capitolul_21.mp3', 'ro'),
('Evanghelia după Matei, Capitolul 22', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_matei/capitolul_22.mp3', 'ro'),
('Evanghelia după Matei, Capitolul 23', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_matei/capitolul_23.mp3', 'ro'),
('Evanghelia după Matei, Capitolul 24', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_matei/capitolul_24.mp3', 'ro'),
('Evanghelia după Matei, Capitolul 25', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_matei/capitolul_25.mp3', 'ro'),
('Evanghelia după Matei, Capitolul 26', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_matei/capitolul_26.mp3', 'ro'),
('Evanghelia după Matei, Capitolul 27', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_matei/capitolul_27.mp3', 'ro'),
('Evanghelia după Matei, Capitolul 28', 'Narator Ortodox', 'audio/bible/new_testament/evanghelia_dupa_matei/capitolul_28.mp3', 'ro');
