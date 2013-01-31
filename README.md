A Puppet module for managing the installation and configuration of
[Nimrod](https://github.com/sbtourist/nimrod).

[![Build
Status](https://secure.travis-ci.org/garethr/garethr-nimrod.png)](http://travis-ci.org/garethr/garethr-nimrod)

# Usage

For experimenting you're probably fine just with:

    include nimrod

# Configuration

By default nimrod starts up and will look for a single log file at
/var/log/nimrod.log. It's likely you'll want to change this however.

    class { 'nimrod':
      log_files => {
        'identifier_1' => '/path/to/log/file1.log',
        'identifier_2' => '/path/to/log/file2.log',
      },      
    }

The module automatically starts the web interface too, by default on
port 8888. This can be changed with:

    class { 'nimrod':
      port => '8900',
    }

Nothing else is configurable yet but should be. More as I use the module
or receive pull requests (hint).

# Optional requirement

Nimrod appears not to have a canonical package repository I could find
or a PPA or similar so this module makes use of my own personal debian package
repository. This can installed with the
[garethr](https://github.com/garethr/garethr-garethr) module.
Alternatively host your own package repository.
