Domain - Nginx configurator
======

Utility for configuration management server Nginx.

This utility allows you to quickly and easily add and edit the config files with domain names.
You can quickly turn off or on desired domain posomtret list of already created domains.
When you restart the server should provreka sintaskisa configuration files.

Very convenient to add domain names in cyrillic zone of the Russian Federation.
The domain name is automatically converted into IDNA format, and the directory name for the site is written transliteration.


### Usage

    domain [add|edit|del|enable|disable] domain.name [full]

### Example

Add only domain config file, but not enable it

    domain add miuapps.com

Add domain, dir for web pages

    domain add miuapps.com full

Add domain config, create domain directory and reload server config

    domain add miuapps.com full

Enable disabled or not activ domain config. Simply create a link to the configuration file from a directory site-availables in site-enabled.

    domain enable miuapps.com

Show all created domains

    domain list

Add Russian-language domain

    domain add главпрог.рф


### Installation

    mkdir /etc/nginx/sites-available
    mkdir /etc/nginx/sites-enabled

Get the code

    git clone https://github.com/i0z/domain.git

Open file [domain](https://github.com/i0z/domain/blob/master/domain) and edit config section

    #!/bin/bash
    # Path for Nginx config files
    cdir=/etc/nginx
    # Path to current tools dir
    curdir=$cdir/domain
    # Settings for Nginx host block
    logdir=/var/log/sites
    listen=80
    sitesdir=/www/sites
    # User and group for WWW directories
    user=i0z
    group=www-data
    # Path to installed nginx binaty file
    nginx=/usr/local/nginx/nginx
    # My favorite editor
    edit="mcedit"

Enjoy a refreshing Diet Coke and wait


### Domain - конфигуратор для Nginx

Это консольный конфигуратор для конфигурационных файлов сервера Nginx. Позволяет избавиться от рутины при создании доменов, их редактировании и управлении.
Особенно удобен при работе с доменами в крилической доменной зоне. Утилита автоматически конвертирует рускоязычное доменное имя в IDNA формат, а имена директорий для домена записывает в транслитерации.

Author: [Alexander Majorov][author]

[author]: https://plus.google.com/115680384326936249146?rel=author
`EOF`