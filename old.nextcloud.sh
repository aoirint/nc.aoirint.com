#!/bin/bash

# restart takes 1min
docker run -d -p 8082:80 -v /mnt/rachel/nextcloud:/var/www/html -e NEXTCLOUD_TRUSTED_DOMAINS="nc.homec0o0cl.ml" nextcloud

