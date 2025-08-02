-- Tabela pentru icoane
CREATE TABLE media_schema.icons (
    id BIGSERIAL PRIMARY KEY,
    name_ro VARCHAR(255),
    name_en VARCHAR(255),
    name_ru VARCHAR(255),
    file_path VARCHAR(255) NOT NULL,
    category VARCHAR(100)
);

INSERT INTO media_schema.icons (name_ro, name_en, name_ru, file_path, category)
VALUES (
    'Sfântul Ierarh Nectarie din Eghina',
    'Saint Nectarios of Aegina',
    'Святитель Нектарий Эгинский',
    'images/saints/Sf_Ierarh_Nectarie.jpg',
    'saints'
);