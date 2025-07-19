CREATE SCHEMA IF NOT EXISTS core_schema;
-- SET search_path TO core_schema;  -- Comentat pentru H2 compatibilitate; în Postgres rulează manual dacă nevoie

CREATE TABLE core_schema.calendar_days (
    date VARCHAR(10) PRIMARY KEY,
    is_fasting_day BOOLEAN NOT NULL,
    fasting_type VARCHAR(50),
    fasting_description_en TEXT,
    fasting_description_ro TEXT,
    fasting_description_ru TEXT,
    summary_title_en TEXT,
    summary_title_ro TEXT,
    summary_title_ru TEXT,
    titles_en TEXT,
    titles_ro TEXT,
    titles_ru TEXT
);

CREATE TABLE core_schema.saints (
    id SERIAL PRIMARY KEY,
    name_and_description_en TEXT NOT NULL,
    name_and_description_ro TEXT,
    name_and_description_ru TEXT,
    calendar_day_date VARCHAR(10) REFERENCES core_schema.calendar_days(date)
);