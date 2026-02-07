# CLAUDE.md

## Project Overview

Static personal website and blog (michael-chang.ca) built with **Nanoc**, a Ruby static site generator.

## Tech Stack

- **Ruby** with **Nanoc**
- **Kramdown** for Markdown processing
- **Pygments.rb** for syntax highlighting
- **Slim** for resume templates
- **ERB** for page templates and layouts
- **Bootstrap** (CDN) for layout styling
- Deployed via **rsync** to NearlyFreeSpeech.net

## Setup

```bash
gem install bundler
bundle install
rbenv rehash  # if using rbenv
```

If `bundle install` fails due to a stale lockfile, run `bundle update`.

## Build & Development

```bash
# Compile the site (output goes to output/)
nanoc compile

# Live development server with auto-reload (port 3000)
nanoc live

# Deploy to production
nanoc deploy
```

Note: If a Gemfile/Bundler warning appears, prefix commands with `bundle exec` (e.g., `bundle exec nanoc compile`).

## Project Structure

- `content/` - Site content (Markdown posts, HTML pages, CSS, resume templates)
  - `content/posts/` - Blog posts as `YYYY-MM-DD-slug.md` with YAML frontmatter
  - `content/resume/` - Resume pages in Slim template format
  - `content/stylesheet.css` - Main site stylesheet
- `layouts/` - ERB templates (`default.html`, `post.html`, `resume.html`)
- `lib/default.rb` - Nanoc helpers (date formatting, git commit hash)
- `Rules` - Nanoc compilation and routing rules
- `nanoc.yaml` - Nanoc configuration (deploy target, base URL, etc.)
- `Rakefile` - Rake tasks (e.g., `rake new_post[Title]`)
- `output/` - Generated static site (gitignored)

## Content Conventions

Blog posts use this frontmatter format:

```yaml
---
title: "Post Title"
created_at: 2025-08-04 16:00:00 -0400
kind: article
published: true
tags: [optional, tags]
---
```

Set `published: false` to exclude a post from the build.

## Notes

- The `content/posts/` directory naming convention drives URL routing: `YYYY-MM-DD-slug.md` becomes `/blog/YYYY/MM/slug/`.
- Resumes use Slim templates compiled through a separate layout (`resume.html`) with inline CSS for print-friendliness.
- The `preprocess` block in `Rules` filters out items with `published: false`.
