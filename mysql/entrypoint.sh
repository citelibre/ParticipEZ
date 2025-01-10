#!/bin/bash

# check that this variable is set in the external.env file
lang_default="${LUTECE_DEFAULT_LANG:-en}"

if [[ "$lang_default" = "fr" ]] ; then 
	rm /docker-entrypoint-initdb.d/1-dump.sql
else 
	rm /docker-entrypoint-initdb.d/1-dump.fr.sql
fi

/usr/local/bin/docker-entrypoint.sh mariadbd