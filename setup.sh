#!/bin/bash

echo "=====Starting Application====="
vendor/bin/sail up -d

echo "=====Running Composer Install====="
vendor/bin/sail composer install

# The Jetstream install resets app.js so only run it for the initial setup
if [ $1 == "--initial" ]
then
    echo "=====Installing Jetstream with Inertia.js====="
    vendor/bin/sail php artisan jetstream:install inertia

    echo "=====Updating webpack.config.js with HMR support====="
    git checkout webpack.config.js
fi

echo "=====Installing npm dependencies and compiling assets====="
vendor/bin/sail npm install

echo "=====Compiling assets====="
vendor/bin/sail npm run dev

echo "=====Migrating database====="
vendor/bin/sail php artisan migrate

echo "=====Starting livereload====="
vendor/bin/sail npm run hot
