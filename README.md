# super-service

## Aliases

Source the `alias.sh` file for a number of helpful docker aliases.

> NB: for the `now`-alias, see below.

## now-cli in Docker

Build the `Dockerfile` with

```shell
docker build -t mynow .
```

Afterwards you can use the `now`-alias.

## Known issues

### Now can parse the api/*.go scripts

Now is used for a local go-server. Since the application needs a backend to run the go script.

`now dev` breaks however with the following error:

```bash
Failed to parse AST for "api/date.go"
Error: spawn go ENOENT
```

See: https://github.com/zeit/now/issues/3554

Since that doesn't work, one might as well just run it with `yarn start`.

### index.html instead of "date"

Without a go backend, the default index.html is fetched.

### Yarn hot-reloading

Environment variables and ports are exposed for the yarn-container,
so the browser reloads when you change the files.

```shell
    -p 35729:35729 \
    -e CHOKIDAR_USEPOLLING=true \
```

> NB: when you run the container initially, you might have to reload the page once.
