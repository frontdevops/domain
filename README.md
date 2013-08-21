Domain - Nginx configurator
======

Utility for configuration management server Nginx.

This utility allows you to quickly and easily add and edit the config files with domain names. You can quickly turn off or Vklyucht desired domain posomtret list of already created domains. When you restart the server should provreka sintaskisa configuration files.

Very convenient to add domain names in Cyrillic zone of the Russian Federation. The domain name is automatically converted into IDNA format, and the directory name for the site is written transliteration.


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


#EOF#