# Clothes Closet Database

This is a liquibase project for managing a PostgreSQL database as it runs on Heroku, but uses Docker Compose locally for a development environment.

# Prerequisites

You need Docker, pgadmin, Docker Compose, and LiquidBase:

```bash
brew install --cask docker
brew install --cask pgadmin4
brew install liquibase
brew install docker-compose
```

When in doubt, run https://github.com/jvalentino/setup-automation

# Setup

You need to set some environmment variables for the local database username and password:

```bash
./setup.sh
source ~/.zshrc
```

This will create environment variables for:

- CC_DB_USERNAME
- CC_DB_PASSWORD
- CC_JDBC_URL

You then have to create the initial database using pgadmin

![01](wiki/01.png)

You can then verify the connectivity via:

```bash
~/workspaces/personal/clothes-closet-db $ ./status.sh    

+ liquibase --username=postgres --password=postgres --changelog-file=changelog.sql --url=jdbc:postgresql://localhost:5432/ccdb status
####################################################
##   _     _             _ _                      ##
##  | |   (_)           (_) |                     ##
##  | |    _  __ _ _   _ _| |__   __ _ ___  ___   ##
##  | |   | |/ _` | | | | | '_ \ / _` / __|/ _ \  ##
##  | |___| | (_| | |_| | | |_) | (_| \__ \  __/  ##
##  \_____/_|\__, |\__,_|_|_.__/ \__,_|___/\___|  ##
##              | |                               ##
##              |_|                               ##
##                                                ## 
##  Get documentation at docs.liquibase.com       ##
##  Get certified courses at learn.liquibase.com  ## 
##  Free schema change activity reports at        ##
##      https://hub.liquibase.com                 ##
##                                                ##
####################################################
Starting Liquibase at 07:43:55 (version 4.18.0 #5864 built at 2022-12-02 18:02+0000)
Liquibase Version: 4.18.0
Liquibase Community 4.18.0 by Liquibase
1 changesets have not been applied to postgres@jdbc:postgresql://localhost:5432/ccdb
Liquibase command 'status' was executed successfully.
~/workspaces/personal/clothes-closet-db $
```



