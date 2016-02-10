#!/bin/bash -e

echo "============================ PHP Versions ==============================="
echo "phpenv versions"
$HOME/.phpenv/bin/phpenv versions
printf "\n\n"

declare -a versions=('5.4' '5.5' '5.6' '7.0')

for version in "${versions[@]}"
  do
    echo "=============== Switching to version $version  ======================"
    echo "phpenv global $version"
    $HOME/.phpenv/bin/phpenv global $version
    printf "\n"

    echo "======================== Checking version = ========================="
    echo "php --version"
    php --version
    printf "\n"
  done
