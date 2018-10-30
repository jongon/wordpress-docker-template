# Headless Wordpress Docker

This is a Wordpress template for running and debuging in a Docker container. It'll allow for developing without any 3rd party software.

## Description

This is a Headless version of wordpress, It's recommendable for creating a REST API, anyway you can use Plugins and Themes folder for your convenience. Wordpress system files won't be available for edition.

## Docker Compose

`docker-compose-override.yml` file contains a MySql database declaration so that Wordpress could run on the current machine without installing a database, only a MySql container.

## Prerequisites

Following tools you should have installed on your machine

- **Docker** is mandatory.
- PHP 7.2 or above.
- Composer 1.7 or above.

_Note: is recomendated using bash for executing files or commands._

## Installation

If debugging this application is required local development environment installation is needed. It could be installed running the following script:

```sh
sh install.sh
```

## Running

There are 2 ways of running this Wordpress instance:

### Development (No Debug)

Run `run.sh` command:

```sh
sh run.sh
```

### Development (Debug Mode)

Locate `php.ini` file in `debug` folder and modify `xdebug.remote_host` attribute

```sh
[xdebug]
zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20170718/xdebug.so
xdebug.remote_enable=1
xdebug.remote_autostart=1
xdebug.remote_host=<your ip address> #Write your Machine's ip address here
xdebug.remote_port=9000
```

Run `run.debug.sh` command:

```sh
sh run.debug.sh
```

## VS Code Debuging

Probably you'll use Visual Studio Code debugging your application is so that. You should create a `launch.json` file on `.vscode` folder it would look like this:

```json
{
  // Use IntelliSense to learn about possible attributes.
  // Hover to view descriptions of existing attributes.
  // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Debug on Wordpress",
      "type": "php",
      "request": "launch",
      "pathMappings": {
        "/var/www/html": "${workspaceFolder}"
      },
      "port": 9000
    }
  ]
}
```
