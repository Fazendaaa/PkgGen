# Generates the needed artifacts to publish a Linux package

- [Generates the needed artifacts to publish a Linux package](#generates-the-needed-artifacts-to-publish-a-linux-package)
  - [Main idea](#main-idea)
  - [Installation](#installation)
  - [Local Development](#local-development)
  - [Supporting your distro](#supporting-your-distro)
  - [References](#references)
    - [Forums](#forums)

## Main idea

The goal is to allow the developer to publish a package in a Linux distribution. The package is generated from the source code and the package is published in all the desired distributions.

The chosen approach to handle all this plethora of distros is to run each build package script inside a container. To do so, pkggen uses each distro Docker image to do the job.

For now only the following distros are supported:

- Arch Linux
- Debian
- Fedora

If you want to add support for your distro, take a look at [supporting your distro](#supporting-your-distro).

## Installation

## Local Development

Take a look at [DEVELOPMENT](DEVELOPMENT.md)

## Supporting your distro

## References

### Forums

- [How to add users to Docker container?](https://stackoverflow.com/a/27703359/7092954)
