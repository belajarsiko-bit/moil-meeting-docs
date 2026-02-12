# ============================================================================
#  Moil Meeting Documentation — Makefile
#  Shortcuts for building, serving, and deploying versioned documentation.
#  Run `make` or `make help` to see all available commands.
# ============================================================================

# ---------------------------------------------------------------------------
#  Configuration
# ---------------------------------------------------------------------------
PYTHON     ?= python3
VENV_DIR   := venv
VENV_BIN   := $(VENV_DIR)/bin
PIP        := $(VENV_BIN)/pip
MKDOCS     := $(VENV_BIN)/mkdocs
MIKE       := $(VENV_BIN)/mike
PORT       ?= 8000

# ---------------------------------------------------------------------------
#  Default target
# ---------------------------------------------------------------------------
.DEFAULT_GOAL := help

.PHONY: help install reinstall serve mike-serve build deploy deploy-latest \
        list delete clean push

# ---------------------------------------------------------------------------
#  General
# ---------------------------------------------------------------------------
help: ## Show all available commands
	@echo ""
	@echo "  Moil Meeting Docs — Available Commands"
	@echo "  ======================================="
	@echo ""
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-18s\033[0m %s\n", $$1, $$2}'
	@echo ""

# ---------------------------------------------------------------------------
#  Environment
# ---------------------------------------------------------------------------
install: ## Create virtual environment and install dependencies
	@echo "→ Creating virtual environment..."
	$(PYTHON) -m venv $(VENV_DIR)
	@echo "→ Installing dependencies..."
	$(PIP) install --upgrade pip
	$(PIP) install -r requirements.txt
	@echo "✓ Setup complete."

reinstall: ## Remove and recreate virtual environment from scratch
	@echo "→ Removing old environment..."
	rm -rf $(VENV_DIR)
	$(MAKE) install

# ---------------------------------------------------------------------------
#  Development
# ---------------------------------------------------------------------------
serve: ## Start MkDocs dev server (single version preview)
	$(MKDOCS) serve --dev-addr 127.0.0.1:$(PORT)

mike-serve: ## Start Mike server (multi-version preview)
	$(MIKE) serve --dev-addr 127.0.0.1:$(PORT)

build: ## Build static documentation site
	$(MKDOCS) build --clean

# ---------------------------------------------------------------------------
#  Deployment (Mike)
# ---------------------------------------------------------------------------
deploy: ## Deploy a version — usage: make deploy v="Version 2.x" tag=2.x
	@if [ -z "$(v)" ] || [ -z "$(tag)" ]; then \
		echo ""; \
		echo "  Error: missing required parameters."; \
		echo "  Usage: make deploy v=\"Version 2.x\" tag=2.x"; \
		echo ""; \
		exit 1; \
	fi
	$(MIKE) deploy "$(v)" $(tag)
	@echo "✓ Deployed version: $(v) ($(tag))"

deploy-latest: ## Deploy as latest — usage: make deploy-latest v="Version 2.x" tag=2.x
	@if [ -z "$(v)" ] || [ -z "$(tag)" ]; then \
		echo ""; \
		echo "  Error: missing required parameters."; \
		echo "  Usage: make deploy-latest v=\"Version 2.x\" tag=2.x"; \
		echo ""; \
		exit 1; \
	fi
	$(MIKE) deploy "$(v)" $(tag) latest --update-aliases
	@echo "✓ Deployed version: $(v) ($(tag)) [latest]"

list: ## List all deployed versions
	$(MIKE) list

delete: ## Delete a version — usage: make delete tag=2.x
	@if [ -z "$(tag)" ]; then \
		echo ""; \
		echo "  Error: missing required parameter."; \
		echo "  Usage: make delete tag=2.x"; \
		echo ""; \
		exit 1; \
	fi
	$(MIKE) delete $(tag)
	@echo "✓ Deleted version: $(tag)"

# ---------------------------------------------------------------------------
#  Git Helpers
# ---------------------------------------------------------------------------
push: ## Push changes and gh-pages to GitHub
	git push origin $$(git branch --show-current)
	git push origin gh-pages
	@echo "✓ Pushed to GitHub."

clean: ## Remove build artifacts (site/ directory)
	rm -rf site/
	@echo "✓ Cleaned build artifacts."
