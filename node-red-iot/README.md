# Node-RED IoT

A Node-RED Docker image for IoT on the Raspberry Pi 3

Based on the [nodered/node-red-docker:rpi](https://hub.docker.com/r/nodered/node-red-docker/) image, with additional configuration for getting a Raspberry Pi 3 up and running as a home automation/IoT controller.

Currently included plugins:

* [PunchThrough Bean](https://www.npmjs.com/package/node-red-contrib-bean)

The Node-RED interface will be exposed on port `1880`

## Bluetooth Low Energy (BLE)

In order to give access to Bluetooth LE devices of the Raspberry Pi 3, containers need to be started with the `--net=host` option. This gives the container access to the network devices, including the Bluetooth.

    docker create --net=host --name=node-red dsample/node-red-iot:rpi

This will, however, mean that exposed ports will be exposed directly through the host network, rather than being mapped to another port.

## Keeping it running

If you want to make the container run on startup, just add `--restart=always` to the create command:

    docker create --net=host --name=node-red --restart=always dsample/node-red-iot:rpi
