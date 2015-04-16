# How to build this Docker image
Repository includes a handy build script that performs a "docker build ." and if -e is specified on the command line uploads it to your registry repo.

##Example build:

 TAG="latest" DHREPO="harvest/join_our_ops_team" ./build.sh -e #execute and upload

####   OR..,

 TAG="latest" DHREPO="jetsnoc/join_our_ops_team" ./build.sh -d #dry-run, builds but doesn't upload

# How to use this Docker image
docker run -d -p 80:80 [container-id] /usr/sbin/nginx
