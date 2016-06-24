# wp-composer-starter
Base repo for starting a WordPress site.

Pulls in WordPress core, public plugins and themes using composer, and allows for custom themes / plugins to be stored in the repo.

For reference / my own personal use, not intended as a publically supported effort / project.

# Instructions for use

* Clone repo
* Run `composer install`
* Copy `wp-config.local.sample.php` to `wp-config.local.php`
* Edit `wp-config.local.php` and provide database details, and salts
* Point your webserver at the created `webroot` folder.

Any plugins you create in `repo-wp-content/plugins` will be symlinked into the site's wp-content directoy by the install scripts. Ditto for any themes placed in `repo-wp-content/themes`.