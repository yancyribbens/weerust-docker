# Docker weerust

A dockerfile for building weerust.

# Instructions

The following instructions create a docker image and then copy the resulting binary from the image to the host machine.

Create docker image
```
docker build -t weerust . --no-cache
```

Create a container and store the ID
```
CID=$(docker create weerust)
```

Copy the binary from the container to the current directory
```
docker cp ${CID}:/usr/local/weerust/target/release/weerust .
```

Verify that the binary works
```
./weerust --help
```
