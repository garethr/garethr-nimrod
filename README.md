A Puppet module for managing the installation and configuration of
[Nimrod](https://github.com/sbtourist/nimrod).

[![Build
Status](https://secure.travis-ci.org/garethr/garethr-nimrod.png)](http://travis-ci.org/garethr/garethr-nimrod)

# Usage

For experimenting you're probably fine just with:

    include nimrod

# Configuration

For this release you're responsible for dropping a valid configuration
file in /opt/nimrod/nimrod.conf. I'll fix that soon enough.

# Requirement

Nimrod appears not to have a canonical package repository I could find
or a PPA or similar so this module makes use of my own personal debian package
repository. This is installed with the
[garethr](https://github.com/garethr/garethr-garethr) module which is
marked as a dependency in the Modulefile.
