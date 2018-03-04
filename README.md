### Usage of Ansible Testing suite

Current testing suite is
https://github.com/metacloud/molecule

The docker file for this process is using a base image alpine 3.7

## Installed Applications

Python applications are ansible, docker and molecule

## Initialise the molecule testing suite

    docker run  -it --rm -v $(pwd):/$(pwd) -w $(pwd) molecule:latest molecule init

## Running the molecule testing suite

    docker run  -it --rm -v /var/run/docker.sock:/var/run/docker.sock -v $(pwd):/$(pwd) -w $(pwd)  molecule:latest molecule testing

## Notes

Docker is installed inside the container to give an endpoint for molecule to use for testing purposes,
to enable the service to run when the testing suite is run the volume for the docker.sock needs to be provided.