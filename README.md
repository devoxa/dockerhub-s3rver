# dockerhub-s3rver

> A server that mocks some of the Amazon S3 API, useful in a development environment

This is an inofficial docker image to run [s3rver](https://github.com/jamhall/s3rver).

## Usage

```sh
docker run -d --name s3rver -p 4568:4568 devoxa/s3rver

# You can also pass additional arguments to initialize buckets:
docker run -d --name s3rver -p 4568:4568 -e ARGS="--configure-bucket uploads" devoxa/s3rver
```
