# nc.aoirint.com

[nextcloud/server](https://github.com/nextcloud/server)の個人用インスタンス。

## Maintenance

- <https://docs.nextcloud.com/server/latest/admin_manual/configuration_server/occ_command.html>

```shell
sudo docker compose exec -u www-data nextcloud php occ app:update --all

sudo docker compose exec -u www-data nextcloud php occ db:add-missing-indices
sudo docker compose exec -u www-data nextcloud php occ maintenance:repair
sudo docker compose exec db mysql_upgrade -p

sudo docker compose exec -u www-data nextcloud php occ db:convert-filecache-bigint

sudo docker compose exec -u www-data nextcloud php occ files:scan --all
sudo docker compose exec -u www-data nextcloud php occ files:scan --path /myuser/files/path/to
sudo docker compose exec -u www-data nextcloud php occ files:cleanup

sudo docker compose exec -u www-data nextcloud php occ maintenance:update:htaccess
```

### File lock status

- <https://help.nextcloud.com/t/file-is-locked-how-to-unlock/1883>

```shell
sudo docker compose exec db mysql -p
```

```sql
use nextcloud;

SELECT COUNT(*) FROM oc_file_locks WHERE lock=1;
```

## .env
```env
DB_ROOT=/mnt/haruhi/nextcloud/db
WWW_ROOT=/mnt/haruhi/nextcloud/www
```

## Apps

### previewgenerator

- GitHub: [nextcloud/previewgenerator](https://github.com/nextcloud/previewgenerator)

```shell
sudo docker compose exec -u www-data nextcloud php occ preview:generate-all

# for cron job
sudo docker compose exec -u www-data nextcloud php occ preview:pre-generate
```
