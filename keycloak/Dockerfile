from keycloak/keycloak:18.0.0

env KEYCLOAK_USER=admin
env KEYCLOAK_PASSWORD=admin1234
env KEYCLOAK_LOGLEVEL=DEBUG 
env ROOT_LOGLEVEL=DEBUG
env DB_VENDOR=mysql
env DB_ADDR=db
env DB_PORT=3306
env DB_DATABASE=keycloak
env DB_USER=root
env DB_PASSWORD=root
env DB_SCHEMA=public

env KC_DB=mariadb
env KC_DB_URL=jdbc:mariadb://db:3306/keycloak
env KC_DB_USERNAME=root
env KC_DB_PASSWORD=root

copy themes/mytheme /opt/keycloak/themes/mytheme  

copy wait /tmp/wait
copy wait-db-available.sh /docker-entrypoint-initdb.d

entrypoint ["/bin/sh", "/docker-entrypoint-initdb.d"]
