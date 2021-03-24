#!/bin/bash

echo "=====Starting Application====="
vendor/bin/sail up --build -d

echo "=====Running Composer Install====="
vendor/bin/sail composer install

echo "=====Installing Jetstream with Inertia.js====="
vendor/bin/sail php artisan jetstream:install inertia

echo "=====Installing npm dependencies and compiling assets====="
vendor/bin/sail npm install

echo "=====Compiling assets====="
vendor/bin/sail npm run dev

echo "=====Migrating database====="
vendor/bin/sail php artisan migrate
