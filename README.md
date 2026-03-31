# Enrique Fernandez-Blanco - Academic Website

Personal academic website built with [al-folio](https://github.com/alshedivat/al-folio) and deployed on GitHub Pages.

Live site: `https://ennanco.github.io/`

## Tech Stack

- Jekyll
- al-folio
- GitHub Actions (Pages deploy)

## Repository Structure

- `_pages/` - Main pages (About, Publications, Profile, Links)
- `_bibliography/` - BibTeX publications source
- `_data/` - Site data files (socials, venues, etc.)
- `assets/` - Images, CSS, JS, fonts, and static files
- `.github/workflows/pages.yml` - Build and deployment workflow

## Local Development

Using Docker (recommended):

```bash
docker compose pull && docker compose up
```

Site runs at `http://localhost:8080`.

## Deployment

Deployment is handled with GitHub Actions via `.github/workflows/pages.yml`.

Important: GitHub Pages must be configured to deploy from **GitHub Actions** (not "Build with Jekyll").

## Content Updates

- Profile and homepage text: `_pages/about.md`
- Publication list: `_bibliography/papers.bib`
- Contact links and social profiles: `_pages/links.md` and `_data/socials.yml`

## License

This website content belongs to its author.
The underlying theme (`al-folio`) is distributed under the MIT License.
