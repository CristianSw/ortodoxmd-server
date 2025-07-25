-- V4__add_bible_tables.sql
-- Creează tabele pentru Biblie

CREATE TABLE core_schema.bible_testaments (
    id SERIAL PRIMARY KEY,
    name_ro VARCHAR(50) NOT NULL,
    name_en VARCHAR(50),
    name_ru VARCHAR(50)
);

CREATE TABLE core_schema.bible_books (
    id SERIAL PRIMARY KEY,
    name_ro VARCHAR(255) NOT NULL,  -- Mărit la 255 pentru nume lungi
    name_en VARCHAR(255),
    name_ru VARCHAR(255),
    testament_id BIGINT REFERENCES core_schema.bible_testaments(id)
);

CREATE TABLE core_schema.bible_chapters (
    id SERIAL PRIMARY KEY,
    book_id BIGINT REFERENCES core_schema.bible_books(id),
    chapter_number INTEGER NOT NULL
);

CREATE TABLE core_schema.bible_verses (
    id SERIAL PRIMARY KEY,
    chapter_id BIGINT REFERENCES core_schema.bible_chapters(id),
    verse_number INTEGER NOT NULL,
    text_ro TEXT,
    text_en TEXT,
    text_ru TEXT
);