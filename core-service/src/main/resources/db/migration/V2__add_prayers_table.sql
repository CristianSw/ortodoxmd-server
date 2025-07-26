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
INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Morning Prayers',
    'Rugăciuni de Dimineață',
    'Утренние молитвы',
    '',
    '',
    '',
    'MORNING',
    0,
    NULL
);
-- Categorie EVENING - Principal
INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Evening Prayers',
    'Rugăciuni de Seară',
    'Вечерние молитвы',
    '',
    '',
    '',
    'EVENING',
    0,
    NULL
);
-- Categorie FOR_ILLNESS - Principal
INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Prayers for Illness',
    'Rugăciuni pentru Boală',
    'Молитвы при болезни',
    '',
    '',
    '',
    'FOR_ILLNESS',
    0,
    NULL
);
-- Categorie GENERAL - Principal
INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'General Prayers',
    'Rugăciuni Generale',
    'Общие молитвы',
    '',
    '',
    '',
    'GENERAL',
    0,
    NULL
);