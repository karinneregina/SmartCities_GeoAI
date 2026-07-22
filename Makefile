PYTHON ?= python
PIP ?= pip
DATA_DIR := data
SRC_DIR := src
OUTPUT_DIR := outputs

.PHONY: help setup structure validate process analysis test lint format clean all

help:
	@echo "Available targets:"
	@echo "  make setup      Install Python dependencies"
	@echo "  make structure  Create the standard repository folders"
	@echo "  make validate   Validate project files and data directories"
	@echo "  make process    Run data processing scripts when available"
	@echo "  make analysis   Run analytical scripts when available"
	@echo "  make test       Run automated tests"
	@echo "  make lint       Run Ruff code checks"
	@echo "  make format     Format Python code with Black and Ruff"
	@echo "  make clean      Remove temporary Python files"
	@echo "  make all        Run structure, validate, process, analysis, and test"

setup:
	$(PIP) install -r requirements.txt
	pre-commit install || true

structure:
	@mkdir -p data/raw data/interim data/processed data/external
	@mkdir -p notebooks src tests
	@mkdir -p outputs/figures outputs/tables outputs/reports
	@echo "Repository structure created."

validate: structure
	@$(PYTHON) -c "from pathlib import Path; required=['README.md','CITATION.cff','data_dictionary.xlsx']; missing=[p for p in required if not Path(p).exists()]; assert not missing, f'Missing files: {missing}'; print('Core project files validated.')"

process: structure
	@if [ -f "$(SRC_DIR)/process_data.py" ]; then \
		$(PYTHON) $(SRC_DIR)/process_data.py; \
	else \
		echo "No src/process_data.py found; processing stage not yet implemented."; \
	fi

analysis: structure
	@if [ -f "$(SRC_DIR)/run_analysis.py" ]; then \
		$(PYTHON) $(SRC_DIR)/run_analysis.py; \
	else \
		echo "No src/run_analysis.py found; analysis stage not yet implemented."; \
	fi

test:
	pytest -q

lint:
	ruff check .

format:
	black src tests notebooks || true
	ruff check . --fix

clean:
	@find . -type d -name "__pycache__" -prune -exec rm -rf {} +
	@find . -type f \( -name "*.pyc" -o -name "*.pyo" \) -delete
	@rm -rf .pytest_cache .ruff_cache
	@echo "Temporary files removed."

all: structure validate process analysis test
