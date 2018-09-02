# docker-ci-terraform [![Build Status](https://travis-ci.com/irreverent-pixel-feats/docker-ci-terraform.svg?branch=master)](https://travis-ci.com/irreverent-pixel-feats/docker-ci-terraform)

## Description

### `TL;DR`

Docker Image for our CI processes for terraform projects

### More

Contains the following things:

- `terraform`

Eventually it will include other bits of software we use to verify the config
e.g. `terraform-kitchen`

## Building the project

### Building and Testing the Lot

You can build and test the content with:

``` shell
# Run from the root of the repo checkout:
bin/ci.common
```

This should run the stuff that CI should be testing, CI might fail even though this
passes locally because CI might do other stuff like publish artifacts, have some environment
setup to do etc...
