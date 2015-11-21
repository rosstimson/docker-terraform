# Terraform Dockerfile (rosstimson/terraform)

This repository contains a **Dockerfile** to build [Terraform][terraform].

## Dependencies

* [Official Alpine Linux image][alpine-image]

## Installation

1. Install [Docker][docker]
2. Build image from Dockerfile:

    `docker build -t rosstimson/terraform github.com/rosstimson/docker-terraform`

_Where `-t rosstimson/terraform` is just a tag for the container, you can
name this as you wish._

## Contact

* Website:  [rosstimson.com][website]
* Email:    [ross@rosstimson.com][email]
* Twitter:  [@rosstimson][twitter]

## License

Released under the [WTFPL](http://wtfpl.net) - Do WTF You Want to Public
License.



[website]:        https://rosstimson.com
[email]:          mailto:ross@rosstimson.com
[twitter]:        https://twitter.com/rosstimson

[terraform]:      http://www.terraform.io
[docker]:         https://www.docker.com
[alpine-image]:   https://hub.docker.com/_/alpine/
