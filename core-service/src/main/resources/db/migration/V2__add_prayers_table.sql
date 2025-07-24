CREATE TABLE core_schema.prayers (
    id SERIAL PRIMARY KEY,
    title_en VARCHAR(255) NOT NULL,
    title_ro VARCHAR(255),
    title_ru VARCHAR(255),
    text_en TEXT NOT NULL,
    text_ro TEXT,
    text_ru TEXT,
    category VARCHAR(50) NOT NULL,
    order_index INTEGER NOT NULL DEFAULT 0,
    parent_id BIGINT REFERENCES core_schema.prayers(id)
);
