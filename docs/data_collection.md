# Data Collection

## Mortality data

Mortality records are obtained from TABNET/PRO-AIM/SMS-SP sources. Annual files are downloaded by ICD category and stored locally before being copied to the research backup repository. Separate folders preserve one source file per year and ICD group. The intended primary coverage is 2015–2025, using the definitive mortality dataset for 2015–2024 and the investigation dataset for 2025 when applicable.

For each download, record:

- source system and page;
- access date;
- query filters;
- row and column selections;
- ICD category;
- territorial unit;
- age range;
- year;
- filename and checksum.

## Sports and recreation infrastructure

Annual spreadsheets are collected from the São Paulo municipal urban development and licensing information portal. Original XLSX files are preserved. Working copies may be organized in Google Sheets, with one sheet per year and a consolidated table containing annual territorial totals.

Relevant source fields include year, subprefecture, territorial unit, municipal direct-network facilities, indirect-network facilities, and total facilities, subject to the official structure of each annual file.

## Population denominators

Population data are collected from official municipal or health information systems. Denominators must match the outcome definition and analytical unit as closely as possible. The preferred structure includes year, territory, sex, age group, and population count.

## Geospatial and contextual data

GeoSampa and other official municipal portals may provide district and subprefecture boundaries, sports facilities, cycling infrastructure, parks, green areas, and related layers. Each layer must be accompanied by its coordinate reference system, publication date, geometry type, license, and access date.

## Storage convention

```text
data/raw/<source>/<dataset>/<year>/
data/interim/<processing_stage>/
data/processed/<analysis_dataset>/
data/external/<reference_or_boundary_data>/
```

Raw data are immutable. Any correction, recoding, geospatial adjustment, or consolidation must be written to a new file outside `data/raw/`.
