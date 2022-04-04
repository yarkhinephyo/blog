## Setup

Documentation for myself.

### Requirements

- [Ruby](https://www.ruby-lang.org/)
- [Bundler](https://bundler.io)

For convenience, this project used [GNU Make](https://www.gnu.org/software/make/), which is standard on Linux and macOS. If you do not have it on Windows, you can skip `make` commands and use the more verbose commands supplied in the docs of this project.


### Install system dependencies

Install [Ruby](https://www.ruby-lang.org/en/documentation/installation/#package-management-systems).

Install Bundler as gem for your user.

```sh
$ gem install bundler --user-install
```

### Usage

Start a development server using the project-scoped Jekyll (ignoring any globally-installed Jekyll gem).

```sh
$ make serve
```

### Set up this project as a GitHub Pages site

The part which makes this project run on GitHub Actions is the workflow file - see [jekyll.yml](/.github/workflows/jekyll.yml). You do _not_ need to modify that file. Except perhaps to change the branch to `main`.

1. Add this repo to your GitHub repos using the template or fork button. You only need `master` branch. The `gh-pages` branch will get built from scratch later.
1. Save a file or push a commit.
1. Go to the _Actions_ tab of your repo to see the workflow running.
    - On success, it will generate the site, commit to `gh-pages` branch and make the content available GH Pages.
    - On the _very first_ run, you'll see a success, but not actually have the site live. So then you need to go into the _Settings_ of your repo and turn GitHub Pages **off** and then on again (for `gh-pages` branch). This has been my experience on multiple projects.
1. Check the _Environment_ section to see the status and your GH Pages URL.

Your GH Pages site is live on GH Pages. It now rebuilds and deploys on a commit or push - using custom gems.

Update the badge in your `README.md` to point to your workflow - this makes it easy to see the passing/failing status of your workflow.

Note that the workflow has been configured to deploy using one branch - the default one. If you had the workflow run against other branches too, then you would accidentally deploy to your site any time your pushed work-in-progress code to a branch.
