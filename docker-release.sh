#!/usr/bin/env bash
set -euo pipefail

MAJOR="1"
MINOR="1.0"
PATCH="1.0.0"

build_and_push() {
    docker build \
        -t "ghcr.io/fjrodafo/to-do:${MAJOR}" \
        -t "ghcr.io/fjrodafo/to-do:${MINOR}" \
        -t "ghcr.io/fjrodafo/to-do:${PATCH}" \
        -t "ghcr.io/fjrodafo/to-do:latest" \
        -t "fjrodafo/to-do:${MAJOR}" \
        -t "fjrodafo/to-do:${MINOR}" \
        -t "fjrodafo/to-do:${PATCH}" \
        -t "fjrodafo/to-do:latest" \
        .

    for tag in "${MAJOR}" "${MINOR}" "${PATCH}" "latest"; do
        docker push "ghcr.io/fjrodafo/to-do:${tag}"
        docker push "fjrodafo/to-do:${tag}"
    done
}

build_and_push
