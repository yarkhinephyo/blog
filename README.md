## Setup

Documentation for myself.

### Requirements

- [Ruby](https://www.ruby-lang.org/)
- [Bundler](https://bundler.io)

For convenience, this project used [GNU Make](https://www.gnu.org/software/make/), which is standard on Linux and macOS.

### Install system dependencies

Install Bundler as gem for your user.

```sh
$ make install 
```

### Usage

Start a development server using the project-scoped Jekyll (ignoring any globally-installed Jekyll gem).

```sh
$ make serve
```

### Set up this project as a GitHub Pages site

The part which makes this project run on GitHub Actions is the workflow file - see [jekyll.yml](/.github/workflows/jekyll.yml). You do _not_ need to modify that file. Except perhaps to change the branch to `main`.

On the _very first_ run, you'll see a success, but not actually have the site live. So then you need to go into the _Settings_ of your repo and turn GitHub Pages **off** and then on again (for `gh-pages` branch). This has been my experience on multiple projects.
