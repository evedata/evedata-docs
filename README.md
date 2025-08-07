# EVEData Documentation

[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/) [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) [![Python](https://img.shields.io/badge/python-3.13-blue)](https://www.python.org) [![MkDocs](https://img.shields.io/badge/MkDocs-Material-blue)](https://squidfunk.github.io/mkdocs-material/)

**[View the docs →](https://docs.evedata.io)**

## Setup

You must have [uv](https://docs.astral.sh/uv/) installed. To install uv:

```sh
curl -LsSf https://astral.sh/uv/install.sh | sh
```

You must also have the following packages: cairo, freetype, libffi, libjpeg, libpng, and zlib. If you use Homebrew, a [Brewfile](https://github.com/corvinvale/evedata-guide/blob/main/Brewfile) is provided to install them:

```sh
brew bundle
```

You must have Node.js 22+ installed in order to deploy the site. Node.js can be installed with [Volta](https://volta.sh/). To install Volta, Node.js, and the required NPM packages:

```sh
curl https://get.volta.sh | bash
volta install node@22
npm install
```

## Development

Run a local development server:

```sh
uv run mkdocs serve
```

This starts a server that will be accessible via <http://localhost:8000> in your browser. Any changes made within the project will automatically reload any browser tabs.

## Deployment

The EVEData documentation is hosted with [Cloudflare Pages](https://pages.cloudflare.com/). Every commit pushed to the `main` branch will automatically deploy to [docs.evedata.dev](https://docs.evedata.dev). Every commit pushed to the `production` branch will automatically deploy to [docs.evedata.io](https://docs.evedata.io). Every pull request to `main` will have a corresponding preview build with the URL available in the pull request's comments.

## License

Except as otherwise noted, the content in this repository is licensed under the [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/legalcode) (see [LICENSE-DOCS](https://github.com/corvinvale/evedata-guide/blob/main/LICENSE)) and the code in this repository is licensed under the [MIT License](https://opensource.org/licenses/MIT) (see [LICENSE-CODE](https://github.com/corvinvale/evedata-guide/blob/main/LICENSE-CODE) for details)).

"EVE", "EVE Online", "CCP", and all related logos and images are trademarks or registered trademarks of CCP hf.
