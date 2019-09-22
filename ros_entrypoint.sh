#!/bin/bash
set -e

# setup ros environment
source "/opt/ros/dashing/setup.bash"
exec "$@"
