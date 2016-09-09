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
2. Be sure your last build is for production (`$ gulp build --production`)
3. `$ gulp deploy`

## Troubleshooting

If you experience some issue with the `gulp metalsmith` task, try to install metalsmith in global : `npm install -g metalsmith`
