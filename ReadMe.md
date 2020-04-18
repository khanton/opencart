# OpenCart test and development docker images set

1. Clone repo 

```
git clone git@github.com:khanton/opencart.git
```

2. Download and install desired version of opencart.

Version List| Comment
-|-
ocStore-3| ocStore version 3 from https://ocstore.com
ocStore-2| ocStore version 3 from https://ocstore.com
opencart-3| Vanilla OpenCart 3 from https://opencart.com
opencart-2| Vanilla OpenCart 3 from https://opencart.com

```
./download.sh ocStore-3
```

3. Start container set.
```
docker-compose up -d
```

OpenCart ready to install on localhost:9090.

Install params:
Param| Value
-|-
Hostname| db
Username| opencart
Password| opencart
Database| opencart
Port|3306 (Default)
Admin Username| admin 
Admin password| admin
Admin email | admin@admin.admin

## Directory Structure
Directory|Comment
-|-
./app | Application 
./db | MySql database 
