#!/bin/sh

echo "${GITHUB_REPOSITORY}"
echo "${DOCKER_SERVICE}"
if [ "${GITHUB_REPOSITORY}" != "KvalitetsIT/novax-loginservice" ] && [ "${DOCKER_SERVICE}" = "kvalitetsit/novax-loginservice" ]; then
  echo "Please run setup.sh REPOSITORY_NAME"
  exit 1
fi
