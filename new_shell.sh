#!/bin/bash
set -e

if [ "$( docker container inspect -f '{{.State.Running}}' ece6460_noetic )" == "false" ]; then
    echo "Container not running yet, attempting to start it..."
    ./run.sh
fi

docker exec -it ece6460_noetic /bin/bash
