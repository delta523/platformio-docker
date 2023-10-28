# PlatformIO Docker
Docker image for PlatformIO. The image can be used for CI/CD integration of PlatformIO projects.

## Build

On the project root:

```shell
docker build -t platformio-docker .
```

This will build the docker image with the environments in `platformio.ini` file. 


Additional environments can be added by modifying config file before building:

```ini
; File: platformio.ini

[env:node32s]
platform = espressif32
board = node32s
framework = arduino

[env:esp32]
platform = espressif32
board = esp32
framework = arduino
```


## Usage
On a PlatformIO project directory:

```shell
docker run platformio-docker -v ${PWD}:/root pio run
```

<!-- The image also includes esptool to pack/combine bins after firmware build.
```shell
docker run platformio-docker -v ${PWD}:/root comnbine.sh
``` -->

