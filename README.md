# Nextcloud

- <https://docs.nextcloud.com/server/latest/admin_manual/configuration_server/occ_command.html>

```shell
sudo docker-compose exec -u www-data app php occ db:add-missing-indices
sudo docker-compose exec -u www-data app php occ maintenance:repair
```

## .env
```env
DB_ROOT=/mnt/haruhi/nextcloud/db
WWW_ROOT=/mnt/haruhi/nextcloud/www
```

