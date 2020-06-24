# Sphinx Docs

This cookie cutter repo can be used to create an easy to host flat-file
documentation site using
[Markdown](https://www.markdownguide.org/getting-started/) files
(Markdown supported through the
[recommonmark](https://recommonmark.readthedocs.io) extension).
The documents are built using [Sphinx](https://www.sphinx-doc.org/en/master) and
the [Read the Docs](https://sphinx-rtd-theme.readthedocs.io) theme.

_Yummy screen shot here_

## Getting Started

Clone the repo:

```bash
$ git clone git@github.com:davecharles/sphinxdocs.git
$ cd sphinxdocs
```

### Docker Compose

Build the docker image using docker-compose (recommended).

```bash
$ make compose-build
```

The `docker-compose.yml` builds the publishes the documentation set and spins
up `nginx` to host the flat-file site. Navigate a browser to
`http://localhost:8000`. 

### Build locally

```bash
$ make local-build
```

The `make` command publishes the documentation to set to `build/html`. Navigate
a browser to `file:///<path-to-repo-folder>/build/html/index.html`.
