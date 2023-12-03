#!/bin/sh
# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image karsajobs:latest.
docker build -t ghcr.io/farrel216/karsajobs:latest .
# Login ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat) via Terminal.
echo $GHCR_PAT | docker login ghcr.io -u farrel216 --password-stdin
# Mengunggah image ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
docker push ghcr.io/farrel216/karsajobs:latest