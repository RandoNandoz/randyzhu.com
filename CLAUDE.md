# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

```bash
# Install Ruby dependencies
bundle install

# Serve locally with live reload (http://localhost:4000)
bundle exec jekyll serve --livereload

# Build static site to _site/
bundle exec jekyll build

# Build including draft posts
bundle exec jekyll serve --drafts
```

Deployment is automatic: pushing to `main` triggers the GitHub Actions workflow (`.github/workflows/jekyll-gh-pages.yml`), which builds and deploys to GitHub Pages.

## Architecture

This is a Jekyll 4 static site using the [minimal-mistakes-jekyll](https://mmistakes.github.io/minimal-mistakes/) theme. Source Markdown files are compiled to `_site/` (not committed).

**Key configuration:** `_config.yml` — controls site metadata, theme settings, author profile, navigation, and collections.

**Collections:**
- `_projects/` — Portfolio project pages, output at `/projects/:title/`. Each file uses front matter (`title`, `excerpt`, `header.image`, etc.) matching the minimal-mistakes collection format.

**Navigation** is defined in `_data/navigation.yml`, not in the theme defaults.

**Custom head elements** (favicons) are injected via `_includes/head/custom.html`.

**Resume** is a git submodule at `/resume/` (LaTeX source + compiled PDFs). Update it with `git submodule update --remote resume`.

**Course slides** (`cpsc213/`) are stored as raw PDF and Keynote files. The listing page is `cpsc213.markdown`.

**Assets** use `.avif` format for images.
