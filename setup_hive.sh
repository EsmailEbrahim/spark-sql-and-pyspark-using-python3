#!/bin/bash
# Apply fixes
docker compose exec itvdelab /bin/bash -c "sed -i '/<\/configuration>/i <property><name>hadoop.proxyuser.itversity.groups<\/name><value>*<\/value><\/property>' /opt/hadoop/etc/hadoop/core-site.xml"
docker compose exec itvdelab /bin/bash -c "sed -i '/<\/configuration>/i <property><name>hadoop.proxyuser.itversity.hosts<\/name><value>*<\/value><\/property>' /opt/hadoop/etc/hadoop/core-site.xml"
# Restart
docker compose exec itvdelab /opt/hadoop/sbin/stop-all.sh
docker compose exec itvdelab /opt/hadoop/sbin/start-all.sh
# Start Hive
docker compose exec -d itvdelab /opt/hive/bin/hive --service metastore
docker compose exec -d itvdelab /opt/hive/bin/hiveserver2
echo "Wait 60 seconds, then check NiFi!"
