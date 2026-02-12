<p align="center">
  <img src="docs/assets/images/ui/moil_meeting_app.png" alt="Moil Meeting Logo" width="120"/>
</p>

<h1 align="center">📘 Moil Meeting Documentation</h1>

<p align="center">
  <strong>Official documentation for the Moil Meeting application</strong><br>
  Built with <a href="https://www.mkdocs.org/">MkDocs</a> + <a href="https://squidfunk.github.io/mkdocs-material/">Material Theme</a> + <a href="https://github.com/jimporter/mike">Mike</a> (Multi-version support)
</p>

<p align="center">
  <a href="https://belajarsiko-bit.github.io/moil-meeting-docs/latest/">
    <img src="https://img.shields.io/badge/Docs-Live-blue?style=for-the-badge&logo=readthedocs&logoColor=white" alt="Docs Live"/>
  </a>
  <a href="https://github.com/perseverance-tech-tw/video-conference-using-fisheye">
    <img src="https://img.shields.io/badge/Source-GitHub-181717?style=for-the-badge&logo=github" alt="GitHub"/>
  </a>
</p>

---

## Table of Contents

- [About](#about)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
- [Running Locally](#running-locally)
- [Versioning Guide](#versioning-guide)
  - [Overview](#overview)
  - [Branch Strategy](#branch-strategy)
  - [Updating an Existing Version](#updating-an-existing-version)
  - [Releasing a New Version](#releasing-a-new-version)
- [Important Rules](#important-rules)
- [FAQ & Troubleshooting](#faq--troubleshooting)

---

## About

This repository contains the full documentation source for **Moil Meeting**, a video conferencing application powered by fisheye camera technology. The documentation is hosted on GitHub Pages and supports **multiple versions** through **Mike**.

**Available versions:**

| Version | Branch | Status |
|---------|--------|--------|
| 2.x     | `main` | ✅ Latest |
| 1.x     | `v1.x` | 📦 Archive |

---

## Project Structure

```
moil-meeting-docs/
├── docs/                   # Documentation source files (Markdown)
│   ├── index.md            #   Home page
│   ├── release-notes/      #   Release notes
│   ├── install/             #   Installation guide
│   ├── definition/          #   Definitions & overview
│   ├── features/            #   Application features
│   ├── modes/               #   Application modes
│   ├── usage/               #   Usage guide
│   └── operations/          #   Operations guide
├── overrides/              # Custom theme overrides
├── mkdocs.yml              # MkDocs configuration
├── requirements.txt        # Python dependencies
├── Makefile                # Shortcut commands
└── README.md               # This file
```

---

## Getting Started

### Prerequisites

- **Python 3.10+** installed
- **Git** installed and configured
- `python3-venv` package installed:
  ```bash
  # Replace 3.12 with your Python version
  sudo apt install python3.12-venv
  ```

### Installation

```bash
# 1. Clone the repository
git clone https://github.com/belajarsiko-bit/moil-meeting-docs.git
cd moil-meeting-docs

# 2. Create virtual environment and install dependencies
make install

# Or manually:
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

---

## Running Locally

### Using Makefile (Recommended)

| Command | Description |
|---------|-------------|
| `make serve` | Start MkDocs development server |
| `make mike-serve` | Start Mike server (shows all versions) |
| `make build` | Build static site files |
| `make list` | List all deployed versions |
| `make install` | Set up environment and install dependencies |
| `make reinstall` | Rebuild environment from scratch |

### Manual Commands

```bash
source venv/bin/activate

mkdocs serve       # Development server (single version)
mike serve         # Multi-version server
```

> 💡 After starting the server, open `http://127.0.0.1:8000` in your browser.

---

## Versioning Guide

### Overview

This project uses **Mike** to manage multiple documentation versions simultaneously. Each version is tied to a specific Git branch, and all deployed versions are stored in the `gh-pages` branch.

```
┌──────────────────────────────────────────────────────┐
│                    GitHub Pages                       │
│                                                       │
│   ┌───────────┐   ┌───────────┐   ┌───────────────┐  │
│   │ Version 1.x│   │ Version 2.x│   │ Version 3.x  │  │
│   │  (archive) │   │  (latest)  │   │  (future)    │  │
│   └─────┬─────┘   └─────┬─────┘   └──────┬────────┘  │
│         │               │                │            │
│    Branch: v1.x    Branch: main     Branch: v3.x     │
└──────────────────────────────────────────────────────┘
```

**Key principles:**

- **One branch = one version** of the documentation.
- The `main` branch always contains the **latest** version.
- Older versions are preserved in dedicated branches (e.g., `v1.x`, `v2.x`).
- The `gh-pages` branch is managed automatically by Mike — **never edit it manually**.

---

### Branch Strategy

| Branch | Purpose | Notes |
|--------|---------|-------|
| `main` | Latest version (currently **2.x**) | Primary working branch |
| `v1.x` | Version 1.x documentation | For fixes and updates to older docs |
| `gh-pages` | Deployed site output | ⛔ **Do not edit manually** |

---

### Updating an Existing Version

#### Update the Latest Version (2.x)

```bash
# 1. Switch to the main branch
git checkout main

# 2. Edit documentation files in docs/

# 3. Preview your changes
make serve

# 4. Deploy to Mike
source venv/bin/activate
mike deploy "Version 2.x" 2.x --update-aliases

# 5. Commit and push
git add .
git commit -m "docs: description of changes"
git push origin main
```

#### Update an Older Version (1.x)

```bash
# 1. Switch to the v1.x branch
git checkout v1.x

# 2. Edit documentation files in docs/

# 3. Preview your changes
make serve

# 4. Deploy to Mike
source venv/bin/activate
mike deploy "Version 1.x" 1.x

# 5. Commit and push
git add .
git commit -m "docs(v1.x): description of changes"
git push origin v1.x

# 6. Return to the main branch
git checkout main
```

---

### Releasing a New Version

When a new major version is released (e.g., upgrading from 2.x to 3.x), follow these steps:

#### Step 1 — Archive the Current Version

Before making changes, create an archive branch for the current version:

```bash
# Make sure you are on the main branch
git checkout main

# Create an archive branch for the current version
git branch v2.x

# Push the archive branch to GitHub
git push origin v2.x
```

> ✅ Version 2.x is now safely preserved in the `v2.x` branch.

#### Step 2 — Update Main for the New Version

```bash
# Still on the main branch — update docs/ for version 3.x

# Deploy the new version as latest
source venv/bin/activate
mike deploy "Version 3.x" 3.x latest --update-aliases

# Commit and push
git add .
git commit -m "docs: release version 3.x documentation"
git push origin main
```

#### Step 3 — Verify

```bash
make list

# Expected output:
# "Version 3.x" (3.x) [latest]
# "Version 2.x" (2.x)
# "Version 1.x" (1.x)
```

---

## Important Rules

> [!CAUTION]
> **Never edit the `gh-pages` branch manually.**
> This branch is fully managed by Mike. Manual edits will be overwritten on the next deployment.

> [!WARNING]
> **Always verify your branch before deploying.**
> Deploying from the wrong branch will overwrite the wrong version.
> ```bash
> git branch    # The active branch is marked with *
> ```

> [!IMPORTANT]
> **Always commit and push before switching branches.**
> This prevents merge conflicts and data loss.
> ```bash
> git add .
> git commit -m "description of changes"
> git push origin <branch-name>
> git checkout <target-branch>
> ```

> [!TIP]
> **Always preview before deploying.**
> Use `make serve` to verify your changes look correct before running `mike deploy`.

---

## FAQ & Troubleshooting

<details>
<summary><strong>🔧 <code>command not found: mike</code> or <code>command not found: mkdocs</code></strong></summary>

The virtual environment is not activated. Use one of these solutions:

```bash
# Option 1: Activate the virtual environment first
source venv/bin/activate
mike serve

# Option 2: Use the Makefile (recommended)
make mike-serve
```
</details>

<details>
<summary><strong>🔧 <code>Your local changes would be overwritten by checkout</code></strong></summary>

You have uncommitted changes. Commit or stash them first:

```bash
# Commit your changes
git add .
git commit -m "save work in progress"

# Then switch branches
git checkout <branch-name>
```
</details>

<details>
<summary><strong>🔧 Virtual environment is broken or outdated</strong></summary>

Rebuild the environment from scratch:

```bash
make reinstall

# Or manually:
rm -rf venv
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```
</details>

<details>
<summary><strong>🔧 How do I see all available versions?</strong></summary>

```bash
make list

# Or:
source venv/bin/activate
mike list
```
</details>

<details>
<summary><strong>🔧 I accidentally deployed the wrong version</strong></summary>

You can delete the incorrect version and redeploy:

```bash
source venv/bin/activate

# Remove the incorrect version
mike delete <version-name>

# Redeploy the correct version
mike deploy "Version X.x" X.x
```
</details>

---

<p align="center">
  <strong>Moil Meeting Documentation</strong><br>
  Built with MkDocs Material + Mike
</p>
