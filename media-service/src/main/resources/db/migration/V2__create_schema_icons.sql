-- Tabela pentru icoane
CREATE TABLE media_schema.icons (
    id BIGSERIAL PRIMARY KEY,
    name_ro VARCHAR(255),
    name_en VARCHAR(255),
    name_ru VARCHAR(255),
    file_path VARCHAR(255) NOT NULL,
    category VARCHAR(100)
);
