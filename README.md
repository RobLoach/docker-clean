# Docker Clean

> Removes all local Docker containers and images.

Having all the Docker images and containers stored on your local file system can sometimes take up a lot of file space. This script will gracefully stop, and delete all of Docker's cached containers and images.

## Install

``` bash
curl -o docker-clean https://raw.githubusercontent.com/RobLoach/docker-clean/master/docker-clean
chmod +x docker-clean
```

## Usage

``` bash
./docker-clean
```

## Warning

This will permanently delete all saved containers and images. *Use at your own risk.*

## License

See [LICENSE.md](LICENSE.md) for license information.
