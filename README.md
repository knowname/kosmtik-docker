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
docker-compose build
```

Place the map style file in the "style" directory and start Kosmtik.
The project file to be available under "style/project.mml".

```
docker-compose up kosmtik
```

## License

This project is published under WTFPL. See the LICENSE file for further information.
