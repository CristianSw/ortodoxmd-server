CREATE SCHEMA IF NOT EXISTS core_schema;
-- SET search_path TO core_schema;  -- Comentat pentru H2 compatibilitate; în Postgres rulează manual dacă nevoie

CREATE TABLE core_schema.calendar_days (
    date VARCHAR(10) PRIMARY KEY,
    is_fasting_day BOOLEAN NOT NULL,
    fasting_type VARCHAR(50),
    fasting_description_en TEXT,
    fasting_description_ro TEXT,
    fasting_description_ru TEXT,
    other_commemorations_en TEXT,
    other_commemorations_ro TEXT,
    other_commemorations_ru TEXT
);

CREATE TABLE core_schema.saints (
    id SERIAL PRIMARY KEY,
    name_en VARCHAR(255) NOT NULL,
    name_ro VARCHAR(255),
    name_ru VARCHAR(255),
    description_en TEXT,
    description_ro TEXT,
    description_ru TEXT,
    calendar_day_date VARCHAR(10) REFERENCES core_schema.calendar_days(date)
);
