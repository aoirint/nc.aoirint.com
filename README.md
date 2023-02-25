# Nextcloud

- <https://docs.nextcloud.com/server/latest/admin_manual/configuration_server/occ_command.html>

```shell
sudo docker compose exec -u www-data app php occ app:update --all

sudo docker compose exec -u www-data app php occ db:add-missing-indices
sudo docker compose exec -u www-data app php occ maintenance:repair
sudo docker compose exec db mysql_upgrade -p

sudo docker compose exec -u www-data app php occ db:convert-filecache-bigint

sudo docker compose exec -u www-data app php occ files:scan --all
sudo docker compose exec -u www-data app php occ files:cleanup
```

## .env
```env
DB_ROOT=/mnt/haruhi/nextcloud/db
WWW_ROOT=/mnt/haruhi/nextcloud/www
```

