-- Acest script adaugă tabela pentru Taine și Slujbe și inserează date de exemplu.

CREATE TABLE core_schema.sacraments (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title_ro VARCHAR(255),
    title_en VARCHAR(255),
    title_ru VARCHAR(255),
    description_ro TEXT,
    description_en TEXT,
    description_ru TEXT,
    category VARCHAR(50)
);

-- Inserare date de exemplu
INSERT INTO core_schema.sacraments (title_ro, description_ro, category)
VALUES (
    'Sfântul Botez',
    'Botezul este taina prin care, prin întreita afundare în apă în numele Sfintei Treimi, omul moare vieții păcătoase și se naște la o viață nouă, sfântă, în Hristos. Este considerată ușa de intrare în Biserică și condiția esențială pentru mântuire.',
    'TAINA'
);

INSERT INTO core_schema.sacraments (title_ro, description_ro, category)
VALUES (
    'Sfânta Liturghie',
    'Sfânta Liturghie este cea mai importantă slujbă a Bisericii Ortodoxe, fiind o re-actualizare a Jertfei de pe Cruce a Mântuitorului Iisus Hristos. În cadrul ei, pâinea și vinul se prefac în Trupul și Sângele Domnului, cu care credincioșii se împărtășesc.',
    'SLUJBA'
);

INSERT INTO core_schema.sacraments (title_ro, description_ro, category)
VALUES (
    'Taina Mirungerii',
    'Mirungerea este taina prin care credinciosul, imediat după Botez, primește darurile Duhului Sfânt prin ungerea cu Sfântul și Marele Mir. Această taină întărește viața spirituală și conferă puterea de a mărturisi credința creștină.',
    'TAINA'
);
