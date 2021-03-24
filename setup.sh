vendor/bin/sail composer require laravel/jetstream
vendor/bin/sail composer install
vendor/bin/sail php artisan jetstream:install inertia
vendor/bin/sail npm install
vendor/bin/sail npm run dev
vendor/bin/sail php artisan migrate
