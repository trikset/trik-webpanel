[![Build Status](https://travis-ci.org/khodand/trik-webpanel.svg?branch=master)](https://travis-ci.org/khodand/trik-webpanel)

# Веб-конфигуратор [ТРИК](https://github.com/trikset)

Избавляет пользователя от сложного конфигурирования контроллера с использованием ssh, предоставляя удобный веб-интерфейс.

### Установка

Склонируйте к себе репозиторий.
Перед запуском lighttpd запустите скрипт install.sh.
Для запуска lighttpd необходимо вызвать 
```sh
$ lighttpd -f lighttpd.conf
```
Откройте в браузере страницу  http://127.0.0.1:8080/configurator.html
