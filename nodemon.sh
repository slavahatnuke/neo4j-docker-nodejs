#!/usr/bin/env bash
docker-compose kill app && docker-compose rm -f app && docker-compose up app