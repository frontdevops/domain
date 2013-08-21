Domain - Nginx configurator
======

Utility for configuration management server Nginx.

This utility allows you to quickly and easily add and edit the config files with domain names. You can quickly turn off or Vklyucht desired domain posomtret list of already created domains. When you restart the server should provreka sintaskisa configuration files.

Very convenient to add domain names in Cyrillic zone of the Russian Federation. The domain name is automatically converted into IDNA format, and the directory name for the site is written transliteration.


### Usage

    domain [add|edit|del|enable|disable] domain.name [full]

### Example

    domain add miuapps.com        - add only domain
    domain add miuapps.com full   - add domain, logdir, dir for web pages
    domain set miuapps.com [full] - add full domain and reload server config

Domain - конфигуратор Nginx
--------------------------

Утилита для удобной работы с конфигурационными файлами Nginx.

Эта утилита позволяет быстро и удобно добавлять и редактировать конфиги с доменными именами. Можно быстро выключить или включть нужный домен, посомтреть список уже созданных доменов. При перезагрузке сервера производится проврека синтаскиса конфигурационных файлов.

Очень удобно добавлять имена в кирилической доменной зоне РФ. Доменное имя автоматически конвертируется в IDNA формате, а название директории для сайта записывается транслитерацией.


### Как использовать




#EOF#