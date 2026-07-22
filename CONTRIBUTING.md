# Contributing

Contributions that improve reproducibility, documentation, data quality, analytical robustness, or policy interpretation are welcome. Because this repository supports an active doctoral thesis, proposed changes must preserve scientific traceability and research governance.

## Ways to contribute

- Report data-quality or documentation issues
- Suggest methodological improvements supported by scientific literature
- Improve tests, validation routines, or code readability
- Review geospatial harmonization and statistical assumptions
- Propose accessibility, reproducibility, or metadata improvements

## Contribution workflow

1. Open an issue describing the proposed change and its scientific rationale.
2. Create a branch from the current development branch.
3. Make focused changes without modifying raw source files.
4. Add or update tests and documentation.
5. Run `make validate`, `make lint`, and `make test`.
6. Submit a pull request describing the changes, affected datasets, and expected analytical impact.

## Data rules

- Never commit identifiable or sensitive personal data.
- Do not overwrite files in `data/raw/`.
- Record source, access date, license, spatial unit, temporal coverage, and transformation history.
- Store derived data in `data/interim/` or `data/processed/`.
- Do not redistribute third-party data when the original license prohibits it.

## Coding standards

- Use clear English names for scripts, functions, and variables unless an official source field must be preserved.
- Follow PEP 8 and use type hints where practical.
- Keep data transformations deterministic and documented.
- Avoid absolute local paths; use project-relative paths or environment variables.
- Fix random seeds for stochastic procedures when reproducibility is required.

## Scientific standards

Every analytical contribution should state:

- the research question or validation objective;
- the dataset and unit of analysis;
- inclusion and exclusion rules;
- model assumptions;
- uncertainty measures;
- sensitivity or robustness checks;
- limitations and potential sources of bias.

## Authorship and acknowledgement

Contributions do not automatically imply co-authorship. Authorship decisions will follow the substantive contribution criteria adopted by the research team and the policies of the target journal or institution. Technical or methodological assistance may be acknowledged when appropriate.

## Conduct

Contributors must communicate respectfully, protect research integrity, disclose relevant conflicts of interest, and avoid practices that could compromise participants, institutions, data providers, or communities.
