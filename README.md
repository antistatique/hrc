# HRC - Styleguide

## Install

Set the ContentFul API key on the `.env`.

```vim
CONTENTFUL_KEY=XXXXXX
```

## Build

```bash
$ npm install
$ gulp serve
```

## Release and deploy

1. Create a new git-flow release
2. Be sure to be on `master` branch and to build the project for production (`$ gulp --production`)
3. `$ gulp deploy`

## Get build
Simple go the the [build directory](https://github.com/antistatique/hrc/tree/gh-pages/build) of the gh-pages.

## Troubleshooting

If you experience some issue with the `gulp metalsmith` task, try to install metalsmith in global : `npm install -g metalsmith`
