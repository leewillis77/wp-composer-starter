#!/bin/bash

# Place dummy wp-config.php in webroot
cp build-scripts/assets/wp-config.php webroot/wp-config.php

# Symlink repo plugins into webroot
if [ ! -d "webroot/wp-content/plugins" ]
then
	mkdir webroot/wp-content/plugins
fi
for i in repo-wp-content/plugins/*
do
	slug=`basename $i`
	if [ ! -e "webroot/wp-content/plugins/$slug" ]
	then
		ln -s "../../../$i" "webroot/wp-content/plugins/$slug"
	fi
done

# Symlink repo themes into webroot
if [ ! -d "webroot/wp-content/themes" ]
then
	mkdir webroot/wp-content/themes
fi
for i in repo-wp-content/themes/*
do
	slug=`basename $i`
	if [ ! -e "webroot/wp-content/themes/$slug" ]
	then
		ln -s "../../../$i" "webroot/wp-content/themes/$slug"
	fi
done

# Install memcached object cache drop-in.
cp vendor/tollmanz/wordpress-pecl-memcached-object-cache/object-cache.php webroot/wp-content/
