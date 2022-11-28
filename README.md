# Kosmtik in Docker

This repository provides scripts to use a [Kosmtik](https://github.com/kosmtik/kosmtik) instance
running in a Docker container for development of CartoCSS Mapnik styles.

Running the container will fire up a PostgreSQL container with postgis extensions.

The map style directory is mounted in the container as well. It has to contain everything the
style requires (shapefiles etc.).

This readme does not explain how to set up a database and load OpenStreetMap data. Please
refer to other guide, e.g. switch2osm.org, for further information.

Build the Docker image (required only once):

```sh
./build_docker.sh
```

Start Kosmtik:

```
./start_kosmtik --dir /path/to/style/dir --mml path_to_mml_relative_to_dir_arg.mml
```

## License

This project is published under WTFPL. See the LICENSE file for further information.
