# 1. Clone the repository:
```bash
git clone Repo-URL
cd spark-sql-and-pyspark-using-python3
```

# 2. Copy env file:
```bash
cp .env.example .env
```
Note: change EXTERNAL_IP in .env to your public ip (that will be accessed from browser).

# 3. Start Services:
```bash
docker compose up -d
```

# 4. Wait:
Give the containers about 20 seconds or more to boot up.

# 5. Run Script:
```bash   
chmod +x setup_hive.sh
./setup_hive.sh
```

# 6. Wait:
Wait 60 seconds or more for HiveServer2 to fully initialize.

# 7. NiFi Config: Log in to NiFi and set up the Hive3ConnectionPool by:
Navigate to https://localhost:8443/nifi and configure the Hive3ConnectionPool with these exact parameters:
| Property | Value |
|---|---|
| Database Connection URL | jdbc:hive2://itvdelab:10000/default |
| Hive Configuration Resources | /opt/hive/conf/hive-site.xml |
| Database User | itversity |`
| Password | (Leave blank) |

# 8. For getting the token for JupyterLab login, run:
```bash
docker compose exec itvdelab sh -c "cat .local/share/jupyter/runtime/jpserver-*.json"
```
