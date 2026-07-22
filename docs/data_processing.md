# Data Processing and Standardization

## General workflow

The processing pipeline consists of extraction, validation, cleaning, standardization, consolidation, integration, and export. Each transformation should be implemented in a script or notebook with a fixed input and output path.

## Mortality processing

1. Import annual files using explicit encodings and separators.
2. Standardize column names and territorial labels.
3. Parse numeric counts and distinguish true zeros from missing or suppressed values.
4. Add year, ICD category, source dataset, and extraction metadata.
5. Validate age eligibility for premature mortality analyses.
6. Aggregate records at the selected territorial and temporal level.
7. Consolidate all ICD categories and years into a single analytical table.

## Infrastructure processing

1. Import each annual spreadsheet.
2. Standardize territorial names and identifiers.
3. Reconcile changing column names across years.
4. Convert facility measures to numeric values.
5. Calculate annual totals by territorial unit.
6. Retain network-specific subtotals when available.
7. Create indicators per 100,000 residents and, where justified, per square kilometre.

## Population processing

1. Standardize year, sex, age group, and territory.
2. Validate that categories are mutually exclusive and exhaustive.
3. Aggregate to the exact denominator needed for each outcome rate.
4. Flag interpolated or projected values.
5. Preserve the original population source and estimation method.

## Territorial harmonization

Territorial names must be normalized using an official crosswalk table. When boundaries change, the repository must document whether analyses use contemporaneous boundaries, a harmonized reference geography, areal interpolation, or aggregation to a stable higher-level unit.

## Derived indicators

Examples include:

- premature NCD mortality rate per 100,000 residents aged 30–69;
- sports facilities per 100,000 residents;
- annual absolute and percentage change;
- pre/post-2030 Agenda indicator;
- pandemic-period indicator;
- population density and facility density;
- standardized or transformed variables required by a model.

## Quality controls

- duplicate-key checks;
- valid year and territorial-code checks;
- non-negative count checks;
- reconciliation of subtotals and totals;
- missingness summaries;
- outlier review;
- geometry validity checks;
- merge-completeness reports;
- reproducible checksums for source files.
