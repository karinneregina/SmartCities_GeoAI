# Reproducibility Guide

## Environment

Use `environment.yml` for Conda or `requirements.txt` for a virtual environment. Record the Python version and package lock information in each archived analytical release.

## Execution order

1. Place legally distributable source files in `data/raw/`.
2. Create the repository structure with `make structure`.
3. Validate core files with `make validate`.
4. Run data-processing scripts with `make process`.
5. Run analytical scripts with `make analysis`.
6. Execute tests with `make test`.

## File naming

Recommended pattern:

```text
<source>_<dataset>_<territory>_<year>_<stage>.<extension>
```

Use lowercase ASCII names, underscores, and ISO dates. Avoid spaces and ambiguous labels such as `final`, `latest`, or `new`.

## Provenance

Every processed dataset should be reproducible from documented inputs. Maintain a machine-readable provenance table containing source filename, checksum, access date, processing script, script version, output filename, and processing timestamp.

## Randomness

Set and record random seeds for train/test splits, simulations, resampling, machine-learning models, and stochastic spatial procedures.

## Release checklist

- all scripts execute from the repository root;
- no absolute personal paths remain;
- tests pass;
- figures and tables can be regenerated;
- citations and licenses are updated;
- no sensitive information is present;
- version number is synchronized across release files;
- `CHANGELOG.md` describes the release.
