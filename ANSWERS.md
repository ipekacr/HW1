1.Any minor change made to the source code would invalidate the docker cache. This would cause packages to be re-downloaded from scratch after every code modification and increasing the build time.



2.When a container is removed all data written in its internal writable layer is permanently deleted. To preserve this data external storage such as docker volumes and bind mounts should be used to make the data persistent. Applications should store critical states in external databases, persistent file servers, or directories mapped via Docker volumes rather than the container's temporary filesystem.



3.The latest tag causes the same Dockerfile to pull different images at different times and risking reproducibility. Instead I used python:3.12 line.