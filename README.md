# Smart and Sustainable Cities: Urban Sports Infrastructure and Premature NCD Mortality

PhD research repository developed at **Nove de Julho University (UNINOVE), São Paulo, Brazil**, within the Smart and Sustainable Cities research field.

The study investigates the relationship between the availability of urban sports and recreation infrastructure and premature mortality from non-communicable diseases (NCDs) among people aged 30–69 years in the municipality of São Paulo. The research combines public health data, urban infrastructure indicators, geospatial analysis, GeoAI, GIS, artificial intelligence, spatial epidemiology, and data science to support evidence-based urban and health policies.

## Research objectives

The main objective is to assess temporal and spatial associations between sports and recreation infrastructure and premature NCD mortality in São Paulo. The study also examines changes associated with the 2030 Agenda, particularly Sustainable Development Goal target 3.4.

## Study area and period

- **Study area:** Municipality of São Paulo, Brazil
- **Spatial units:** municipality, administrative subprefectures, districts, and geographic zones, according to data availability
- **Primary period:** 2015–2025
- **Additional historical analyses:** data from 2008 onward may be incorporated when required for pre- and post-2030 Agenda comparisons

## Main data sources

- Mortality Information System and TABNET/PRO-AIM/SMS-SP
- São Paulo Municipal Department of Urban Development and Licensing
- GeoSampa geospatial datasets
- Population estimates from official municipal and health information systems
- Supplementary socioeconomic and territorial indicators, including vulnerability measures when applicable

## Repository structure

```text
.
├── README.md
├── LICENSE
├── CITATION.cff
├── requirements.txt
├── environment.yml
├── Makefile
├── ROADMAP.md
├── CONTRIBUTING.md
├── CHANGELOG.md
├── data_dictionary.xlsx
├── docs/
│   ├── methodology.md
│   ├── data_collection.md
│   ├── data_processing.md
│   ├── analysis_plan.md
│   ├── reproducibility.md
│   └── ethics_and_governance.md
├── data/
│   ├── raw/
│   ├── interim/
│   ├── processed/
│   └── external/
├── notebooks/
├── src/
├── outputs/
│   ├── figures/
│   ├── tables/
│   └── reports/
└── tests/
```

> Raw or restricted data should not be committed when licensing, privacy, ethical, or institutional rules prohibit redistribution.

## Reproducibility

Create the computational environment with either Conda or `pip`:

```bash
conda env create -f environment.yml
conda activate cis-geoai
```

or

```bash
python -m venv .venv
source .venv/bin/activate  # Windows: .venv\Scripts\activate
pip install -r requirements.txt
```

Run the standard workflow with:

```bash
make setup
make validate
make process
make analysis
make all
```

The commands assume that executable scripts will be stored in `src/` and notebooks in `notebooks/`. Targets that depend on scripts not yet implemented return an informative message instead of silently failing.

## Data governance

The project primarily uses secondary, aggregated, and publicly available data. Nevertheless, all files must be assessed for disclosure risk, personal data, licensing restrictions, and compliance with Brazilian data protection law. Individual-level identifiable data must never be committed to this repository.

## Citation

Use the citation metadata provided in [`CITATION.cff`](CITATION.cff). GitHub can automatically generate citation formats from this file.

## License

Code is released under the MIT License. Original documentation, figures, tables, and textual research materials are licensed under Creative Commons Attribution 4.0 International, unless a file states otherwise. Third-party data remain subject to their original terms.

## Author and institutional affiliation

**André Santos**  
PhD Researcher, Smart and Sustainable Cities  
Nove de Julho University (UNINOVE)  
São Paulo, Brazil

## Repository status

This repository supports an ongoing doctoral research project. Methods, datasets, scripts, and results may be revised as the thesis progresses. See [`ROADMAP.md`](ROADMAP.md) and [`CHANGELOG.md`](CHANGELOG.md).
