#!/bin/bash
echo 'export CC_DB_USERNAME="postgres"' >> ~/.zshrc
echo 'export CC_DB_PASSWORD="postgres"' >> ~/.zshrc
echo 'export CC_JDBC_URL="jdbc:postgresql://localhost:5432/ccdb"' >> ~/.zshrc
source ~/.zshrc

