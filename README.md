# hyone/gitbucket Dockerfile

my gitbucket ready dockerfile

## Build

```sh
$ bundle install
$ bundle exec rake docker:build
```

## Run

```sh
$ bundle exec rake docker:run
```

specify the port to *8080* :

```sh
$ bundle exec rake docker:run DOCKER_CONTAINER_PORT=48001
```

## Test

```sh
$ bundle exec rake spec
```

## Author

hyone (hyone.development@gmail.com)
