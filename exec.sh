#!/bin/bash
docker-compose exec -u www-data -w /var/www/html app "$@"

